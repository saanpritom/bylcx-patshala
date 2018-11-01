from django.contrib import admin
from school_app.models import SchoolData, CourseData, LectureData

# Register your models here.
admin.site.register(SchoolData)
admin.site.register(CourseData)
admin.site.register(LectureData)
