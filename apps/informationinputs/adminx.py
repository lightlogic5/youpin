import xadmin

from .models import informationinput

class informationinputAdmin(object):
    list_display = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']
    search_fields = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']
    list_filter = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']

xadmin.site.register(informationinput, informationinputAdmin)