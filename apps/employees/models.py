# _*_ encoding:utf-8 _*_
from __future__ import unicode_literals

from django.db import models

# Create your models here.

class w_section(models.Model):
    name = models.CharField(max_length=50, verbose_name=u"工段名")

    class Meta:
        verbose_name = u"工段"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name

class w_team(models.Model):
    name = models.CharField(max_length=50, verbose_name=u"车间班组名")

    class Meta:
        verbose_name = u"车间班组"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name


class w_employee(models.Model):
    w_employeeid = models.CharField(max_length=10, verbose_name=u"员工编号",default=0)
    name = models.CharField(max_length=50, verbose_name=u"员工姓名")
    w_section = models.ForeignKey(w_section, verbose_name=u"所属工段")
    w_team = models.ForeignKey(w_team, verbose_name=u"所属车间班组")

    class Meta:
        verbose_name = u"员工信息管理"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name
