# _*_ encoding:utf-8 _*_
from rest_framework import serializers
from informationinputs.models import informationinput


class SnippetSerializer(serializers.ModelSerializer):
    class Meta:
        model = informationinput
        fields = ('user', 'category', 'add_time','sketch')