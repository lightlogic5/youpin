# _*_ encoding:utf-8 _*_
from __future__ import unicode_literals

from datetime import datetime

from django.db import models

from users.models import UserProfile
from employees.models import w_employee
from institutions.models import institution
# Create your models here.

class informationinput(models.Model):
    "考核信息录入"
    user=models.ForeignKey(UserProfile,verbose_name=u"考核员", null=True, blank=True)
    category=models.ForeignKey(institution,verbose_name="制度ID和加扣分")
    sketch=models.CharField(max_length=500,verbose_name=u"简述")
    w_employeeid = models.ForeignKey(w_employee, verbose_name=u"考核对象")
    add_time=models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")
    image = models.ImageField(upload_to=u"information/%y/%m", default=u"information/default.png", max_length=1000)
    has_agree=models.BooleanField(default=False,verbose_name=u"是否审查通过")
    catego = models.CharField(default="gr", verbose_name=u"考核对象类别", max_length=20,choices=(("gd", "工段"), ("bz", "班组"), ("gr", "个人")))

    class Meta:
        verbose_name = u"考核信息"
        verbose_name_plural = verbose_name




class is_informationinput(informationinput):
    class Meta:
        verbose_name = "审核审批"
        verbose_name_plural = verbose_name
        proxy = True


class pro_informationinput(informationinput):
    class Meta:
        verbose_name = "管理员流程补救"
        verbose_name_plural = verbose_name
        proxy = True

