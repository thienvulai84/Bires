"""Custom page model"""
from django.db import models

from wagtail.core.models import Page
from wagtail.core.fields import RichTextField
from wagtail.admin.edit_handlers import FieldPanel, MultiFieldPanel, InlinePanel

from blog.models import BlogDetailPage
from project.models import ProjectDetailPage


# Create your models here.
class CustomPage(Page):
    """Custom page class"""
    template = 'custom_page/custom_page.html'

    subpage_types = []

    content = RichTextField(blank=True, null=True)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def get_context(self, request, *args, **kwargs):
        """Adding custom to stuff to context"""
        context = super().get_context(request, *args, **kwargs)

        return context

    content_panels = Page.content_panels + [
        FieldPanel('content'),
        MultiFieldPanel([
            InlinePanel(
                'question_answer_custom_page',
                max_num=1,
                min_num=1
            ),
        ], heading='Q&A'),
    ]

    class Meta:
        verbose_name = 'Custom Page'
        verbose_name_plural = 'Custom Pages'
