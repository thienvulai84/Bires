# Generated by Django 3.1.3 on 2020-12-02 02:03

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import modelcluster.fields
import wagtail.core.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('wagtailimages', '0022_uploadedimage'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('wagtailcore', '0059_apply_collection_ordering'),
    ]

    operations = [
        migrations.CreateModel(
            name='BlogCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255, null=True)),
                ('slug', models.SlugField(allow_unicode=True, help_text='A slug to identify blog by this category', max_length=255, verbose_name='slug')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'verbose_name': 'Blog Category',
                'verbose_name_plural': 'Blog Categories',
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='BlogListingPage',
            fields=[
                ('page_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='wagtailcore.page')),
            ],
            options={
                'verbose_name': 'Blog Listing Page',
                'verbose_name_plural': 'Blog Listing Pages',
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='BlogTag',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255, null=True)),
                ('slug', models.SlugField(allow_unicode=True, help_text='A slug to identify blog by this category', max_length=255, verbose_name='slug')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'verbose_name': 'Blog Tag',
                'verbose_name_plural': 'Blog Tags',
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='BlogDetailPage',
            fields=[
                ('page_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='wagtailcore.page')),
                ('content', wagtail.core.fields.RichTextField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('categories', modelcluster.fields.ParentalManyToManyField(blank=True, to='blog.BlogCategory')),
                ('featured_image', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='wagtailimages.image')),
                ('tags', modelcluster.fields.ParentalManyToManyField(blank=True, to='blog.BlogTag')),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='user_blog_detail', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Blog Detail Page',
                'verbose_name_plural': 'Blog Detail Pages',
            },
            bases=('wagtailcore.page',),
        ),
    ]
