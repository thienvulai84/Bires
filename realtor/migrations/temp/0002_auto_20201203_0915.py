# Generated by Django 3.1.3 on 2020-12-03 09:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('realtor', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='realtorlistingpage',
            name='profile_link',
            field=models.CharField(max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='realtorlistingpage',
            name='title_on_homepage',
            field=models.CharField(max_length=200, null=True),
        ),
    ]
