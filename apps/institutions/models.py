# _*_ encoding:utf-8 _*_
from __future__ import unicode_literals

from django.db import models

# Create your models here.

class inscategory(models.Model):
    category = models.CharField(max_length=50, verbose_name=u"制度类别")

    class Meta:
        verbose_name = u"制度分类"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.category

class institution(models.Model):
    categoryid = models.ForeignKey(inscategory, verbose_name=u"制度类别")
    name = models.CharField(max_length=50, verbose_name=u"制度名称")
    institution = models.CharField(max_length=50, verbose_name=u"制度内容")
    institutionid = models.CharField(max_length=10, verbose_name=u"制度ID")
    score = models.CharField(max_length=2, verbose_name=u"加扣分")

    class Meta:
        verbose_name = u"制度"
        verbose_name_plural = verbose_name
    def __unicode__(self):
        return self.name
