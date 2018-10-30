from django.shortcuts import render
from django.http import HttpResponse, Http404
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
