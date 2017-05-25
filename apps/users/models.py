# _*_ encoding:utf-8 _*_
# from __future__ import unicode_literals

from django.db import models

# Create your models here.

from django.contrib.auth.models import AbstractUser

from institutions.models import inscategory


class UserProfile(AbstractUser):
  nick_name = models.CharField(max_length=50, verbose_name=u"昵称", default="")
  birday = models.DateField(verbose_name=u"生日", null=True, blank=True)
  gender = models.CharField(max_length=6, choices=(("male",u"男"),("female","女")), default="female")
  image = models.ImageField(upload_to="image/%Y/%m",default=u"image/default.png", max_length=100)
  user_id = models.CharField(max_length=11, null=True, blank=True)
  user_post = models.ForeignKey(inscategory, verbose_name=u"所属岗位职责", null=True, blank=True)

  class Meta:
      verbose_name = "用户信息"
      verbose_name_plural = verbose_name

  def __unicode__(self):
      return self.username

