# _*_ encoding:utf-8 _*_
import xadmin

from .models import informationinput,is_informationinput,pro_informationinput
from users.models import UserProfile

class informationinputAdmin(object):
    list_display = ['category','sketch','w_employeeid','add_time','image','has_agree']
    search_fields = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']
    list_filter = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']
    exclude = ["has_agree","user"]
    model_icon = 'fa fa-quora'

    def save_models(self):
        new_obj = self.new_obj
        new_obj.user = self.request.user
        # 不要些nick_name,不可以把一个字段赋给一个外键，是错误的，这里user和userprofile是外键关系，用user即可
        new_obj.save()


class is_informationinputAdmin(object):
    list_display = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']
    search_fields = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']
    list_filter = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']
    model_icon = 'fa fa-quora'

    def queryset(self):
        qs = super(is_informationinputAdmin, self).queryset()
        qs = qs.filter(has_agree=False)
        return qs

class pro_informationinputAdmin(object):
    list_display = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']
    search_fields = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']
    list_filter = ['user', 'category','sketch','w_employeeid','add_time','image','has_agree']
    model_icon = 'fa fa-quora'
    list_editable = ['has_agree']

xadmin.site.register(informationinput, informationinputAdmin)
xadmin.site.register(is_informationinput, is_informationinputAdmin)
xadmin.site.register(pro_informationinput, pro_informationinputAdmin)
