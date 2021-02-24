from bs4 import BeautifulSoup

from django.shortcuts import render
from django.core.paginator import Paginator
from . import filters

from project.models import ProjectDetailPage, ProjectListingPage, ProjectRequest
# from custom_form.models import RequestFormPage, FormField
from .forms import RequestForm


def project_request_form(request, slug):
    project = ProjectDetailPage.objects.live().public().filter(slug=slug).first
    form = RequestForm()

    if request.method == 'POST':
        form = RequestForm(request.POST)
        if form.is_valid():
            project_request = ProjectRequest(
                name=form.cleaned_data['name'],
                phone=form.cleaned_data['phone'],
                email=form.cleaned_data['email'],
                url=form.cleaned_data['url'],
                description=form.cleaned_data['description'],
                term_condition=form.cleaned_data['term_condition'],
            )

            project_request.save()

            context = {
                'project': project,
                'form': form,
                'is_submitted': True,
            }
            # request_forms = FormField.objects.first()

            return render(request, 'project/project_request_form.html', context=context)

    context = {
        'project': project,
        'form': form,
        'is_submitted': False,
    }

    return render(request, 'project/project_request_form.html', context=context)


def projects_list(request):
    context = {}

    filtered_projects = filters.ProjectFilter(
        request.GET,
        queryset=ProjectDetailPage.objects.live().public().order_by('city')
    )

    context['filtered_projects'] = filtered_projects

    paginated_filtered_projects = Paginator(filtered_projects.qs, 2)
    page_number = request.GET.get('page')

    project_page_object = paginated_filtered_projects.get_page(page_number)
    context['project_page_object'] = project_page_object

    context['project_listing_page'] = ProjectListingPage.objects.live().public().first
    context['cities'] = ProjectDetailPage.objects.live().order_by('city').values('city').distinct()

    for project in context['project_page_object']:
        soup = BeautifulSoup(project.general_information, 'html.parser')
        raw_text = soup.get_text()
        project.general_information = ' '.join(raw_text.split()[:15]) + ' ...'

    return render(request, 'project/projects.html', context=context)
