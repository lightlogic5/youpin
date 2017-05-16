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
    user=models.ForeignKey(UserProfile,verbose_name=u"考核员")
    category=models.ForeignKey(institution,verbose_name="制度ID和加扣分")
    sketch=models.CharField(max_length=500,verbose_name=u"简述")
    w_employeeid = models.ForeignKey(w_employee, verbose_name=u"考核对象")
    add_time=models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")
    image = models.ImageField(upload_to="information/%y/%m", default=u"information/default.png", max_length=100)
    has_agree=models.BooleanField(default=False,verbose_name=u"是否审查通过")

    class Meta:
        verbose_name = u"考核信息"
        verbose_name_plural = verbose_name
