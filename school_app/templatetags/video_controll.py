from django import template

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
def lecture_description_id(current_id_args):
    current_id_args = str(current_id_args)
    current_id_args = 'description' + current_id_args
    return current_id_args


@register.filter
def lecture_description_button(current_id_args):
    current_id_args = str(current_id_args)
    current_id_args = 'button' + current_id_args
    return current_id_args
