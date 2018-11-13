from django.shortcuts import render
from django.http import HttpResponse, Http404
from django.db.models import Q
from django.views.generic import View, TemplateView, ListView, DetailView
from school_app.models import SchoolData, CourseData, LectureData
from itertools import chain
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator


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
    lecture_results = LectureData.objects.filter(Q(name__icontains=query) | Q(search_token__icontains=query))
    course_results = CourseData.objects.filter(Q(name__icontains=query) |  Q(search_token__icontains=query))

    try:
        search_results = list(sorted(chain(lecture_results, course_results), key=lambda instance: instance.id))
        total_results = len(search_results)
        paginator = Paginator(search_results, 10)
        page = request.GET.get('page')
        s_results = paginator.get_page(page)
        context = {'search_items': s_results, 'keyword': query, 'value': '1', 'total_results': total_results}
        return render(request, template_name, context)
    except IndexError as e:
        context = {'value': '0'}
        return render(request, template_name, context)


def handler404(request):
    return render(request, 'userwebsite/404.html', status=404)


def handler500(request):
    return render(request, 'userwebsite/500.html', status=500)
