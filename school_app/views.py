from django.shortcuts import render
from django.http import HttpResponse, Http404
from django.db.models import Q
from django.views.generic import View, TemplateView, ListView, DetailView
from school_app.models import SchoolData, CourseData, LectureData
from itertools import chain
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from django.core.mail import send_mail, BadHeaderError
from .forms import ContactForm


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

    def get(self, request):
        form = ContactForm()
        return render(request, self.template_name, {'form': form})

    def post(self, request):
        form = ContactForm(request.POST)
        if form.is_valid():
            sender_name = form.cleaned_data['sender_name']
            from_email = form.cleaned_data['from_email']
            subject = form.cleaned_data['subject']
            message = form.cleaned_data['message']
            try:
                send_mail(subject, message, from_email, ['pritom@bylc.org'])
                return render(request, self.template_name, {'form': form, 'success_message': 1})
            except BadHeaderError:
                return render(request, self.template_name, {'form': form, 'success_message': 0})

        return render(request, self.template_name, {'form': form})


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
