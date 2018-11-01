from django.shortcuts import render
from django.http import HttpResponse, Http404
from django.db.models import Q
from django.views.generic import View, TemplateView, ListView, DetailView
from school_app.models import SchoolData, CourseData, LectureData


class HomePageView(ListView):
    context_object_name = 'data_of_school'
    model = SchoolData
    template_name = 'userwebsite/home-page-view.html'


class CourseDetailView(DetailView):
    context_object_name = 'data_of_course'
    model = CourseData
    template_name = 'userwebsite/course-detail-view.html'


class ContactView(TemplateView):
    template_name = 'userwebsite/contact-view.html'


def search(request):
    template_name = 'userwebsite/search-result-list-view.html'
    query = request.GET.get('q')
    results = LectureData.objects.filter(Q(name__icontains=query))
    context = {'search_items': results, 'keyword': query}
    return render(request, template_name, context)


def handler404(request):
    return render(request, 'userwebsite/404.html', status=404)


def handler500(request):
    return render(request, 'userwebsite/500.html', status=500)
