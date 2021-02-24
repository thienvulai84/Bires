from django.db import models

from wagtail.admin.edit_handlers import MultiFieldPanel, FieldPanel
from wagtail.contrib.settings.models import BaseSetting, register_setting
from wagtail.images.edit_handlers import ImageChooserPanel

from project.models import ProjectDetailPage, ProjectListingPage
from blog.models import BlogDetailPage, BlogListingPage, BlogCategory, BlogTag
from realtor.models import RealtorListingPage
from custom_page.models import CustomPage


@register_setting
class SiteSettings(BaseSetting):
    """general settings for custom website"""
    list_projects = ProjectDetailPage.objects.order_by('created_at').all()[:5]
    list_blogs = BlogDetailPage.objects.order_by('created_at').all()[:5]
    pages = CustomPage.objects.all()
    categories = BlogCategory.objects.all()
    projects = ProjectListingPage.objects.all()[:1]
    realtors = RealtorListingPage.objects.all()[:1]

    read_more_link = models.TextField(blank=True, null=True)
    footer_content = models.TextField(blank=True, null=True)

    logo = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+',
    )
    logo_svg = models.FileField(upload_to='.svg_image', blank=True, null=True)

    logo_icon = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+',
    )

    panels = [
        MultiFieldPanel([
            ImageChooserPanel('logo'),
            ImageChooserPanel('logo_icon'),
        ], heading='Logo and icon website'),
        FieldPanel('logo_svg'),
        FieldPanel('footer_content'),
        FieldPanel('read_more_link'),
    ]
