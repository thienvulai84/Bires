"""Realtor listing and detail pages."""
from django.db import models
from modelcluster.fields import ParentalKey

from wagtail.admin.edit_handlers import FieldPanel, MultiFieldPanel
from wagtail.images.edit_handlers import ImageChooserPanel

from wagtail.core.models import Page, Orderable

from blog.models import BlogDetailPage


# Create your models here.
class RealtorListingPage(Page):
    """a realtor listing page"""

    title_on_homepage = models.CharField(max_length=200, blank=False, null=True)
    profile_link = models.CharField(max_length=200, blank=False, null=True)

    content_panels = Page.content_panels + [
        FieldPanel('title_on_homepage'),
        FieldPanel('profile_link'),
    ]

    subpage_types = [
        'realtor.RealtorDetailPage',
    ]
    max_count = 1

    def get_context(self, request, *args, **kwargs):
        """Adding custom to stuff to context"""
        context = super().get_context(request, *args, **kwargs)
        context['blogs'] = BlogDetailPage.objects.live().public()
        context['realtors'] = RealtorDetailPage.objects.live().public()

        return context

    class Meta:
        verbose_name = 'Realtor Listing Page'
        verbose_name_plural = 'Realtor Listing Pages'


class RealtorProject(Orderable):
    """Realtor is responsible for this project"""
    project_page = ParentalKey(
        'project.ProjectDetailPage',
        blank=False,
        null=True,
        related_name='project_realtor'
    )

    realtor_page = ParentalKey(
        'realtor.RealtorDetailPage',
        related_name='realtor_project'
    )


class RealtorDetailPage(Page):
    """a realtor detail page"""
    subpage_types = []

    name = models.CharField(max_length=255, blank=False, null=True)
    position_title = models.CharField(max_length=255, blank=False, null=True)
    phone = models.CharField(max_length=255, blank=False, null=True)
    email = models.CharField(max_length=255, blank=False, null=True)
    description = models.TextField(blank=True, null=True)
    short_description = models.TextField(blank=True, null=True)
    link_profile1 = models.URLField(blank=True, null=True)
    link_profile2 = models.URLField(blank=True, null=True)
    link_profile3 = models.URLField(blank=True, null=True)

    image = models.ForeignKey(
        'wagtailimages.Image',
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
    )

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    content_panels = Page.content_panels + [
        MultiFieldPanel([
            FieldPanel('name'),
            FieldPanel('position_title'),
            FieldPanel('phone'),
            FieldPanel('email'),
            FieldPanel('description'),
            FieldPanel('short_description'),

        ], heading='Personal information'),
        ImageChooserPanel('image'),
        MultiFieldPanel([
            FieldPanel('link_profile1'),
            FieldPanel('link_profile2'),
            FieldPanel('link_profile3'),
        ], heading='online contact'),
    ]

    class Meta:
        verbose_name = 'Realtor Detail Page'
        verbose_name_plural = 'Realtor Detail Pages'
