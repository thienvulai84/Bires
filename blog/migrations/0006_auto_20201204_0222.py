# Generated by Django 3.1.3 on 2020-12-04 02:22

from django.db import migrations
import django_extensions.db.fields
import modelcluster.fields


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0005_auto_20201204_0208'),
    ]

    operations = [
        migrations.AlterField(
            model_name='blogcategory',
            name='category_blog_detail',
            field=modelcluster.fields.ParentalManyToManyField(blank=True, to='blog.BlogDetailPage'),
        ),
        migrations.AlterField(
            model_name='blogcategory',
            name='slug',
            field=django_extensions.db.fields.AutoSlugField(blank=True, editable=False, populate_from='name'),
        ),
        migrations.AlterField(
            model_name='blogtag',
            name='slug',
            field=django_extensions.db.fields.AutoSlugField(blank=True, editable=False, populate_from='name'),
        ),
    ]
