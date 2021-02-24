from bs4 import BeautifulSoup

import django_filters
from django.db.models import Q

from django.db import models
from django import forms
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
# from django_extensions.db.fields import AutoSlugField
from autoslug import AutoSlugField
from django.contrib.auth.models import User

from modelcluster.fields import ParentalManyToManyField

from wagtail.core.models import Page
from wagtail.core.fields import RichTextField
from wagtail.admin.edit_handlers import FieldPanel, MultiFieldPanel, InlinePanel
from wagtail.images.edit_handlers import ImageChooserPanel
from wagtail.snippets.models import register_snippet


# Create your models here.
@register_snippet
class BlogCategory(models.Model):
    """Blog category for a snippet"""
    name = models.CharField(max_length=255, blank=False, null=True)
    slug = AutoSlugField(populate_from='name', editable=True)

    category_blog_detail = ParentalManyToManyField(
        'blog.BlogDetailPage',
        blank=True,
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    panels = [
        FieldPanel('name'),
        FieldPanel('slug'),
    ]

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Blog Category'
        verbose_name_plural = 'Blog Categories'

        ordering = ['name']


@register_snippet
class BlogTag(models.Model):
    """Blog tag for a snippet"""
    name = models.CharField(max_length=255, blank=False, null=True)
    slug = AutoSlugField(populate_from='name', editable=True)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    panels = [
        FieldPanel('name'),
        FieldPanel('slug'),
    ]

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Blog Tag'
        verbose_name_plural = 'Blog Tags'

        ordering = ['name']


class BlogListingPage(Page):
    """Listing page lists all the Blog Detail Pages"""
    template_name = 'blog/blog_listing_page'

    title_on_homepage = models.CharField(max_length=200, blank=False, null=True)

    content_panels = Page.content_panels + [
        FieldPanel('title_on_homepage'),
    ]

    max_count = 1
    subpage_types = [
        'blog.BlogDetailPage',
    ]

    def get_context(self, request, *args, **kwargs):
        """Adding custom stuff to context"""
        context = super().get_context(request, *args, **kwargs)
        context['blogs'] = BlogDetailPage.objects.live().public()

        for blog in context['blogs']:
            soup = BeautifulSoup(blog.content)
            raw_text = soup.text

            blog.content = ' '.join(raw_text.split())

        filtered_blogs = BlogFilter(
            request.GET,
            queryset=context['blogs']
        )

        context['filter'] = filtered_blogs

        paginated_filtered_blogs = Paginator(filtered_blogs.qs, 2)
        page_number = request.GET.get('page')

        blog_page_object = paginated_filtered_blogs.get_page(page_number)
        context['blog_page_object'] = blog_page_object

        for blog in context['blog_page_object']:
            soup = BeautifulSoup(blog.content, "html5lib")
            raw_text = soup.text

            blog.content = ' '.join(raw_text.split())

        return context

    class Meta:
        verbose_name = 'Blog Listing Page'
        verbose_name_plural = 'Blog Listing Pages'


class BlogDetailPage(Page):
    """Blog detail page"""
    subpage_types = []

    content = RichTextField(blank=True, null=True)
    featured_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=False,
        on_delete=models.SET_NULL,
        related_name='+',
    )

    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='user_blog_detail')

    categories = ParentalManyToManyField('blog.BlogCategory', blank=True)
    tags = ParentalManyToManyField('blog.BlogTag', blank=True)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    content_panels = Page.content_panels + [
        FieldPanel('content'),
        ImageChooserPanel('featured_image'),
        MultiFieldPanel([
            FieldPanel('categories', widget=forms.CheckboxSelectMultiple)
        ], heading='Categories'),
        MultiFieldPanel([
            FieldPanel('tags', widget=forms.CheckboxSelectMultiple)
        ], heading='Tags'),
        MultiFieldPanel([
            InlinePanel('question_answer_blog', max_num=1, min_num=1),
        ], heading='Q&A'),
        FieldPanel('user')
    ]

    def get_context(self, request, *args, **kwargs):
        """Adding custom to stuff to context"""
        context = super().get_context(request, *args, **kwargs)
        context['blogs'] = BlogDetailPage.objects.live().public()

        return context

    class Meta:
        verbose_name = 'Blog Detail Page'
        verbose_name_plural = 'Blog Detail Pages'


class BlogFilter(django_filters.FilterSet):
    search_content_and_title = django_filters.CharFilter(method='filter_by_content_and_title')

    class Meta:
        model = BlogDetailPage
        fields = []

    def filter_by_content_and_title(self, queryset, name, value):
        return queryset.filter(
            Q(title__icontains=value) | Q(content__icontains=value)
        )
