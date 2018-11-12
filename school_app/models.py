from django.db import models

# Create your models here.
class SchoolData(models.Model):
    name = models.CharField(max_length=256)
    card_color = models.CharField(max_length=256, default='#ffff')
    model_name = models.CharField(max_length=256, default='SchoolData')

    def __str__(self):
        return self.name


class CourseData(models.Model):
    name = models.CharField(max_length=256)
    description = models.TextField()
    search_token = models.TextField()
    school = models.ForeignKey(SchoolData, related_name='course_data', on_delete=models.CASCADE,)
    model_name = models.CharField(max_length=256, default='CourseData')

    def __str__(self):
        return self.name


class LectureData(models.Model):
    name = models.CharField(max_length=256)
    lecture_video_link = models.URLField(max_length=356, default='#')
    description = models.TextField()
    enable_description = models.BooleanField(default=True)
    search_token = models.TextField()
    course = models.ForeignKey(CourseData, related_name='lecture_data', on_delete=models.CASCADE,)
    model_name = models.CharField(max_length=256, default='LectureData')

    def __str__(self):
        return str(self.id)
