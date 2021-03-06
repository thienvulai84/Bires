# Generated by Django 3.1.3 on 2020-12-02 02:03

from django.db import migrations, models
import django.db.models.deletion
import modelcluster.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('custom_page', '0001_initial'),
        ('blog', '0001_initial'),
        ('project', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='QuestionAnswer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'verbose_name': 'Question And Answer',
                'verbose_name_plural': 'Questions And Answers',
            },
        ),
        migrations.CreateModel(
            name='QuestionAnswerProject',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sort_order', models.IntegerField(blank=True, editable=False, null=True)),
                ('project_page', modelcluster.fields.ParentalKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='question_answer_project', to='project.projectdetailpage')),
                ('question_answer', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='+', to='question_answer.questionanswer')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='QuestionAnswerDetail',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question', models.TextField(null=True)),
                ('answer', models.TextField(blank=True, null=True)),
                ('question_answer', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='question_answer_questionanswer', to='question_answer.questionanswer')),
            ],
        ),
        migrations.CreateModel(
            name='QuestionAnswerCustomPage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sort_order', models.IntegerField(blank=True, editable=False, null=True)),
                ('custom_page_q_and_a', modelcluster.fields.ParentalKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='question_answer_custom_page', to='custom_page.custompage')),
                ('question_answer', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='+', to='question_answer.questionanswer')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='QuestionAnswerBlog',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sort_order', models.IntegerField(blank=True, editable=False, null=True)),
                ('blog_page', modelcluster.fields.ParentalKey(on_delete=django.db.models.deletion.CASCADE, related_name='question_answer_blog', to='blog.blogdetailpage')),
                ('question_answer', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='+', to='question_answer.questionanswer')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='QADetailQuestionAnswer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sort_order', models.IntegerField(blank=True, editable=False, null=True)),
                ('qa_detail_question_answer', modelcluster.fields.ParentalKey(on_delete=django.db.models.deletion.CASCADE, related_name='qa_detail_question_answer', to='question_answer.questionanswer')),
                ('question_answer', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='question_answer_questionanswer', to='question_answer.questionanswerdetail')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
    ]
