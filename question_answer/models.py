from django.db import models
from modelcluster.fields import ParentalKey
from modelcluster.models import ClusterableModel

from wagtail.admin.edit_handlers import FieldPanel, InlinePanel
from wagtail.core.models import Orderable
from wagtail.snippets.models import register_snippet


# Create your models here.
class QuestionAnswerProject(Orderable):
    """This allow to select question and answer"""
    project_page = ParentalKey(
        'project.ProjectDetailPage',
        blank=True,
        null=True,
        related_name='question_answer_project',
    )

    question_answer = models.ForeignKey(
        'question_answer.QuestionAnswer',
        blank=True,
        null=True,
        on_delete=models.CASCADE,
        related_name='+',
    )


class QuestionAnswerCustomPage(Orderable):
    """This allow to select question and answer"""
    custom_page_q_and_a = ParentalKey(
        'custom_page.CustomPage',
        blank=True,
        null=True,
        related_name='question_answer_custom_page'
    )

    question_answer = models.ForeignKey(
        'question_answer.QuestionAnswer',
        blank=True,
        null=True,
        on_delete=models.CASCADE,
        related_name='+',
    )


class QuestionAnswerBlog(Orderable):
    """This allow to select question and answer"""
    blog_page = ParentalKey('blog.BlogDetailPage', related_name='question_answer_blog')

    question_answer = models.ForeignKey(
        'question_answer.QuestionAnswer',
        blank=True,
        null=True,
        on_delete=models.CASCADE,
        related_name='+',
    )


@register_snippet
class QuestionAnswerDetail(models.Model):
    """detail for Q&A question"""

    question = models.TextField(blank=False, null=True)
    answer = models.TextField(blank=True, null=True)

    question_answer = models.ForeignKey(
        'question_answer.QuestionAnswer',
        on_delete=models.CASCADE,
        related_name='question_answer_questionanswer'
    )

    def __str__(self):
        """String repr of this class"""
        return self.question + "( " + self.question_answer.name + " )"


class QADetailQuestionAnswer(Orderable):
    """question and answer detail inside question answer"""
    qa_detail_question_answer = ParentalKey(
        'question_answer.QuestionAnswer',
        on_delete=models.CASCADE,
        related_name='qa_detail_question_answer',
    )

    question_answer = models.ForeignKey(
        'question_answer.QuestionAnswerDetail',
        on_delete=models.CASCADE,
        related_name='question_answer_questionanswer'
    )


@register_snippet
class QuestionAnswer(ClusterableModel, models.Model):
    """Q&A model class"""
    name = models.CharField(max_length=255, blank=True, null=True)
    inlines = [QuestionAnswerDetail, ]

    panels = [
        FieldPanel('name'),
        InlinePanel('qa_detail_question_answer'),
    ]

    def __str__(self):
        """String repr of this class"""
        return self.name

    class Meta:
        verbose_name = 'Question And Answer'
        verbose_name_plural = 'Questions And Answers'
