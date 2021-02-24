"""This is a project filter"""
import django_filters
from django import forms
from django.db import models

from project.models import ProjectDetailPage


def get_cities():
    cities = ProjectDetailPage.objects.live().order_by('city').values('city').distinct()

    lst_cities = []

    for city in cities:
        lst_cities.append((city['city'], city['city']))

    return tuple(lst_cities)


class ProjectFilter(django_filters.FilterSet):
    """This is a project filter class"""
    city = django_filters.MultipleChoiceFilter(choices=get_cities)

    class Meta:
        model = ProjectDetailPage

        fields = ['city']

        # filter_overrides = {
        #     models.CharField: {
        #         'filter_class': django_filters.BooleanFilter,
        #         'extra': lambda f: {
        #             'widget': forms.CheckboxInput,
        #         },
        #     },
        # }
