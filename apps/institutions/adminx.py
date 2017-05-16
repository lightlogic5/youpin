import xadmin

from .models import inscategory,institution

class inscategoryAdmin(object):
    list_display = [ 'category']
    search_fields = [ 'category']
    list_filter = ['category']

class institutionAdmin(object):
    list_display = ['categoryid','name','institution','institutionid','score']
    search_fields = ['categoryid','name', 'institution','institutionid','score']
    list_filter = ['categoryid','name', 'institution','institutionid','score']

xadmin.site.register(inscategory, inscategoryAdmin)
xadmin.site.register(institution, institutionAdmin)