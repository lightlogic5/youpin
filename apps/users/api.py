from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from informationinputs.models import informationinput


class SnippetSerializer(serializers.ModelSerializer):
    class Meta:
        model = informationinput
        fields = ('user', 'category', 'sketch', 'w_employeeid')



