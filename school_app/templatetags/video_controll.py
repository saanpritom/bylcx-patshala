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
