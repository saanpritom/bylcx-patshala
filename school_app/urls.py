from django.urls import path
from school_app import views

urlpatterns = [
    path('', views.index, name='home_page'),
    path('contact', views.ContactView.as_view(), name='contact_page')
]
