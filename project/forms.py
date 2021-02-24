"""request form for project request"""

from django import forms

from project.models import ProjectDetailPage


class RequestForm(forms.Form):
    name = forms.CharField(max_length=255, required=False)
    phone = forms.CharField(max_length=255)
    email = forms.EmailField()
    description = forms.CharField(widget=forms.Textarea, required=False)
    url = forms.CharField(widget=forms.Textarea, required=False)
    term_condition = forms.BooleanField(required=True)


def get_cities():
    cities = ProjectDetailPage.objects.live().order_by('city').values('city').distinct()

    list_cities = []

    for city in cities:
        list_cities.append((city['city'], city['city']))

    return tuple(list_cities)


class SearchForm(forms.Form):
    options = get_cities()

    cities = forms.MultipleChoiceField(widget=forms.CheckboxSelectMultiple, choices=options, required=True)
