from django.db import models

from modelcluster.fields import ParentalKey
from wagtail.admin.edit_handlers import FieldPanel, InlinePanel, MultiFieldPanel, FieldRowPanel
from wagtail.contrib.forms.edit_handlers import FormSubmissionsPanel
from wagtail.contrib.forms.models import AbstractFormField, AbstractEmailForm
from wagtail.core.fields import RichTextField


# Create your models here.
class FormField(AbstractFormField):
    page = ParentalKey(
        'RequestFormPage',
        on_delete=models.CASCADE,
        related_name='form_fields'
    )


class RequestFormPage(AbstractEmailForm):
    subpage_types = []

    thank_you_text = RichTextField(blank=True)

    content_panels = AbstractEmailForm.content_panels + [
        FieldPanel('thank_you_text'),
        InlinePanel('form_fields', label='Form Fields'),
        MultiFieldPanel([
            FieldRowPanel([
                FieldPanel('from_address', classname='col6'),
                FieldPanel('to_address', classname='col6'),
            ]),
            FieldPanel('subject'),
        ], heading='Email Settings'),
    ]

