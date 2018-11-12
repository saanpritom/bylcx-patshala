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
def customadd(value_one, value_two):
    return value_one + value_two


@register.filter
def search_obj_len(search_obj):
    return len(search_obj)
