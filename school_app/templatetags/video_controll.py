from django import template
from school_app.models import CourseData, LectureData, SchoolData

register = template.Library()

@register.filter
def nextmodal(current_id_args):
    """Increment one value"""
    current_id_args = current_id_args + 1
    return current_id_args


@register.filter
def previousmodal(current_id_args):
    """Decrement one value"""
    current_id_args = current_id_args - 1
    return current_id_args


@register.filter
def nextelement(course_id, lecture_id):
    lecture_id_list = list(LectureData.objects.filter(course=course_id))
    return_lect = 1

    for i in range(len(lecture_id_list)):
        if i == lecture_id:
            return_lect = lecture_id_list[i]
            break

    return return_lect
    ##return lecture_id_list


@register.filter
def lecture_description_id(current_id_args):
    current_id_args = str(current_id_args)
    current_id_args = 'description' + current_id_args
    return current_id_args


@register.filter
def lecture_description_button(current_id_args):
    current_id_args = str(current_id_args)
    current_id_args = 'button' + current_id_args
    return current_id_args
