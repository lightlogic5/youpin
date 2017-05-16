import xadmin

from .models import w_section,w_team,w_employee

class w_sectionAdmin(object):
    list_display = ['name']
    search_fields = ['name']
    list_filter = ['name']

class w_teamAdmin(object):
    list_display = ['name']
    search_fields = ['name']
    list_filter = ['name']

class w_employeeAdmin(object):
    list_display = ['w_employeeid', 'name','w_section','w_team']
    search_fields = ['w_employeeid', 'name','w_section','w_team']
    list_filter = ['w_employeeid', 'name','w_section','w_team']

xadmin.site.register(w_section, w_sectionAdmin)
xadmin.site.register(w_team, w_teamAdmin)
xadmin.site.register(w_employee, w_employeeAdmin)