from django.shortcuts import render
from django.http import HttpResponse, Http404
from django.views.generic import View, TemplateView

# Create your views here.
def index(request):
    return render(request, 'userwebsite/home-page-view.html')


class ContactView(TemplateView):
    template_name = 'userwebsite/contact-view.html'
