"""project class"""

from django import forms
from django.db import models
from wagtail.contrib.modeladmin.options import (
    ModelAdmin)

from modelcluster.fields import ParentalKey, ParentalManyToManyField

from wagtail.core.models import Page, Orderable
from wagtail.core.fields import RichTextField
from wagtail.admin.edit_handlers import FieldPanel, InlinePanel, MultiFieldPanel
from wagtail.images.edit_handlers import ImageChooserPanel
from wagtail.snippets.models import register_snippet


# Create your models here.
@register_snippet
class ProjectCategory(models.Model):
    """Project category for snippet"""
    name = models.CharField(max_length=255, blank=False, null=True)
    slug = models.SlugField(
        verbose_name='slug',
        allow_unicode=True,
        max_length=255,
        help_text='A slug to identify projects by this category',
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
        verbose_name = 'Project Category'
        verbose_name_plural = 'Project Categories'

        ordering = ['name']


class ProjectDetailPageCarousel(Orderable):
    """1 to 5 images for project detail page"""
    page = ParentalKey('project.ProjectDetailPage', related_name='project_detail_carousel_images')

    project_detail_carousel_image = models.ForeignKey(
        'wagtailimages.Image',
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
    )

    panels = [
        ImageChooserPanel('project_detail_carousel_image'),
    ]


class ProjectPart(Orderable):
    page = ParentalKey('project.ProjectDetailPage', related_name='project_parts')

    part_title = models.CharField(max_length=200, blank=True, null=True)
    part_content = RichTextField(blank=True, null=True)

    panels = [
        FieldPanel('part_title'),
        FieldPanel('part_content'),
    ]


class ProjectListingPage(Page):
    """Listing all the Project pages."""
    template = 'project/projects.html'

    title_on_homepage = models.CharField(max_length=200, blank=False, null=True)

    content_panels = Page.content_panels + [
        FieldPanel('title_on_homepage'),
    ]

    max_count = 1
    subpage_types = [
        'project.ProjectDetailPage',
    ]

    class Meta:
        verbose_name = 'Project Listing Page'
        verbose_name_plural = 'Project Listing Pages'


class ProjectDetailPage(Page):
    """Project detail page."""
    template = 'project/project_request_form.html'
    subpage_types = []

    hot_title = models.CharField(max_length=100, blank=True, null=True, help_text='Hot title')

    address = models.CharField(max_length=200, blank=False, null=True)
    city = models.CharField(max_length=100, blank=False, null=True)
    status = models.TextField(blank=False, null=True)
    # payment_method = RichTextField(blank=False, null=True)
    general_information = RichTextField(blank=False, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    is_displayed_on_homepage = models.BooleanField(blank=False, null=True)

    categories = ParentalManyToManyField('project.ProjectCategory', blank=True)

    featured_image = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
    )

    content_panels = Page.content_panels + [
        MultiFieldPanel([
            FieldPanel('hot_title'),
            FieldPanel('address'),
            FieldPanel('city'),
            FieldPanel('status'),
            FieldPanel('is_displayed_on_homepage'),
        ], heading='General detail'),
        MultiFieldPanel([
            InlinePanel('project_realtor', max_num=1, min_num=1)
        ], heading='Realtor'),

        MultiFieldPanel([
            InlinePanel('project_parts')
        ], heading='Project parts'),

        MultiFieldPanel([
            FieldPanel('categories', widget=forms.CheckboxSelectMultiple)
        ], heading='Categories'),

        MultiFieldPanel([
            InlinePanel('project_detail_carousel_images')
        ], heading='Carousel Image'),

        ImageChooserPanel('featured_image'),
        # FieldPanel('payment_method'),
        FieldPanel('general_information'),
        MultiFieldPanel([
            InlinePanel('question_answer_project', max_num=1, min_num=1),
        ], heading='Q&A'),
    ]

    class Meta:
        verbose_name = 'Project Detail Page'
        verbose_name_plural = 'Project Detail Pages'


@register_snippet
class ProjectRequest(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    phone = models.CharField(max_length=255, blank=False, null=True)
    email = models.CharField(max_length=255, blank=False, null=True)
    description = models.TextField(blank=False, null=True)
    url = models.TextField(blank=True, null=True)
    term_condition = models.BooleanField(blank=False, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    panels = [
        FieldPanel('name'),
        FieldPanel('phone'),
        FieldPanel('email'),
        FieldPanel('description'),
        FieldPanel('url'),
        MultiFieldPanel([
            FieldPanel('term_condition'),
        ], heading='Term and Conditions'),
    ]

    list_display = ('name', 'phone', 'email', 'created_at')

    def __str__(self):
        """repr of customer request"""
        return self.name

    class Meta:
        verbose_name = 'Project Request'
        verbose_name_plural = 'Project Requests'


class ProjectRequestAdmin(ModelAdmin):
    list_display = ('name', 'phone', 'email', 'created_at')
