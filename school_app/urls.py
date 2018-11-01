from django.urls import path
from school_app import views

urlpatterns = [
    path('', views.HomePageView.as_view(), name='home_page'),
    path('contact', views.ContactView.as_view(), name='contact_page'),
    path('course/<int:pk>/', views.CourseDetailView.as_view(), name='course_detail_page'),
    path('result', views.search, name='search_page'),
]
