from django.db import models

from wagtail.core.models import Page
from wagtail.admin.edit_handlers import FieldPanel

from project.models import ProjectDetailPage
from blog.models import BlogDetailPage
from realtor.models import RealtorDetailPage


class HomePage(Page):
    """Home page model"""
    template = 'home/home_page.html'

    subpage_types = [
        'project.ProjectListingPage',
        'blog.BlogListingPage',
        'realtor.RealtorListingPage',
        'custom_page.CustomPage',
    ]

    max_count = 1

    banner_title = models.CharField(max_length=100, blank=True, null=True)
    banner_subtitle = models.CharField(max_length=100, blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def get_context(self, request, *args, **kwargs):
        """Adding custom to stuff to context"""
        context = super().get_context(request, *args, **kwargs)
        list_projects = ProjectDetailPage.objects.live().public().filter(is_displayed_on_homepage=1)
        context['footer_projects'] = ProjectDetailPage.objects.live().public().order_by('created_at')[:5]
        context['blogs'] = BlogDetailPage.objects.live().public().order_by('created_at')[:5]
        context['list_blogs'] = context['blogs']

        context['realtors'] = RealtorDetailPage.objects.live().public()[:3]

        projects_length = list_projects.count()

        if projects_length >= 4:
            if projects_length % 3 != 0:
                number_of_projects_displayed = int(projects_length/3) * 3
                list_projects = list_projects[:number_of_projects_displayed]

        context['projects'] = list_projects

        for project in context['projects']:
            raw_text = "<p class=\"card-text description\">" + project.general_information[3:]
            project.general_information = ' '.join(raw_text.split()[:20]) + ' ...'

        for blog in context['blogs']:
            raw_text = blog.content
            if blog == context['blogs'][0]:
                blog.content = ' '.join(raw_text.split()[:100]) + ' ...'
                blog.content = '<span class="text-justify mt-3">' + blog.content + '</span>'
            else:
                blog.content = ' '.join(raw_text.split()[:10]) + ' ...'

        return context

    banner_svg_image = models.FileField(upload_to='.svg_image', blank=False, null=True)

    content_panels = Page.content_panels + [
        FieldPanel('banner_title'),
        FieldPanel('banner_subtitle'),
        FieldPanel('banner_svg_image'),
    ]

    class Meta:
        verbose_name = 'Home Page'
        verbose_name_plural = 'Home Pages'
