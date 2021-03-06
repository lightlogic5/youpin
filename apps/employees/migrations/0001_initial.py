# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2017-05-15 16:52
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='w_employee',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('w_employeeid', models.CharField(default=0, max_length=10, verbose_name='\u5458\u5de5\u7f16\u53f7')),
                ('name', models.CharField(max_length=50, verbose_name='\u5458\u5de5\u59d3\u540d')),
            ],
            options={
                'verbose_name': '\u5458\u5de5\u4fe1\u606f\u7ba1\u7406',
                'verbose_name_plural': '\u5458\u5de5\u4fe1\u606f\u7ba1\u7406',
            },
        ),
        migrations.CreateModel(
            name='w_section',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50, verbose_name='\u5de5\u6bb5\u540d')),
            ],
            options={
                'verbose_name': '\u5de5\u6bb5',
                'verbose_name_plural': '\u5de5\u6bb5',
            },
        ),
        migrations.CreateModel(
            name='w_team',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50, verbose_name='\u8f66\u95f4\u73ed\u7ec4\u540d')),
            ],
            options={
                'verbose_name': '\u8f66\u95f4\u73ed\u7ec4',
                'verbose_name_plural': '\u8f66\u95f4\u73ed\u7ec4',
            },
        ),
        migrations.AddField(
            model_name='w_employee',
            name='w_section',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='employees.w_section', verbose_name='\u6240\u5c5e\u5de5\u6bb5'),
        ),
        migrations.AddField(
            model_name='w_employee',
            name='w_team',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='employees.w_team', verbose_name='\u6240\u5c5e\u8f66\u95f4\u73ed\u7ec4'),
        ),
    ]
