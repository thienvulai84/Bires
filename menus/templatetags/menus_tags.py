from django import template

from ..models import Menu

register = template.Library()


@register.simple_tag()
def get_menu(slug):
    if check_menu(slug):
        return Menu.objects.get(slug=slug)

    return None


def check_menu(slug):
    menu = Menu.objects.filter(slug=slug)
    if menu:
        return True

    return False
