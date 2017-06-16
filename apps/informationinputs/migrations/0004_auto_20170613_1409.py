# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2017-06-13 14:09
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('informationinputs', '0003_auto_20170613_1407'),
    ]

    operations = [
        migrations.AddField(
            model_name='informationinput',
            name='catego',
            field=models.CharField(choices=[('gd', '\u5de5\u6bb5'), ('bz', '\u73ed\u7ec4'), ('gr', '\u4e2a\u4eba')], default='gr', max_length=20, verbose_name='\u8003\u6838\u5bf9\u8c61\u7c7b\u522b'),
        ),
        migrations.AlterField(
            model_name='informationinput',
            name='category',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='institutions.institution', verbose_name='\u5236\u5ea6ID\u548c\u52a0\u6263\u5206'),
        ),
    ]
