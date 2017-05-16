# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2017-05-15 16:52
from __future__ import unicode_literals

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('employees', '0001_initial'),
        ('institutions', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='informationinput',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sketch', models.CharField(max_length=500, verbose_name='\u7b80\u8ff0')),
                ('add_time', models.DateTimeField(default=datetime.datetime.now, verbose_name='\u6dfb\u52a0\u65f6\u95f4')),
                ('image', models.ImageField(default='information/default.png', upload_to='information/%y/%m')),
                ('has_agree', models.BooleanField(default=False, verbose_name='\u662f\u5426\u5ba1\u67e5\u901a\u8fc7')),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='institutions.institution', verbose_name='\u5236\u5ea6ID\u548c\u52a0\u6263\u5206')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='\u8003\u6838\u5458')),
                ('w_employeeid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='employees.w_employee', verbose_name='\u8003\u6838\u5bf9\u8c61')),
            ],
            options={
                'verbose_name': '\u8003\u6838\u4fe1\u606f',
                'verbose_name_plural': '\u8003\u6838\u4fe1\u606f',
            },
        ),
    ]
