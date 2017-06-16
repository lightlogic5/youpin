# _*_ encoding:utf-8 _*_
from django.shortcuts import render
from django.views.generic import View
from datetime import datetime

# Create your views here.

from .models import informationinput


from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.db.models import Sum
from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from informationinputs.models import informationinput
from informationinputs.serializers import SnippetSerializer
from institutions.models import institution
# Create your views here.

class inforView(View):
    def get(self, request):
        #取出考核信息
        current_month = datetime.now().month
        all_infors = informationinput.objects.filter(add_time__month = current_month).values("add_time","sketch","catego","w_employeeid__name","category__score")
        all_m=all_infors.values('w_employeeid__name').order_by('w_employeeid__name').annotate(total=Sum('category__score'))


        #考核对象的类别筛选
        category=request.GET.get("ct","gr")
        if category:
            all_infors=all_infors.filter(catego=category)

        return render(request, "index.html", {
            "all_in": all_infors,
            "category":category,
            "allm":all_m,

        })

        # hot_orgs = all_infors.order_by("-add_time")[:3]

@csrf_exempt
def snippet_list(request):
    """
    List all code snippets, or create a new snippet.
    """
    if request.method == 'GET':
        snippets = informationinput.objects.all()
        serializer = SnippetSerializer(snippets, many=True)
        return JsonResponse(serializer.data, safe=False)

    elif request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = SnippetSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data, status=201)
        return JsonResponse(serializer.errors, status=400)


@csrf_exempt
def snippet_detail(request, pk):
    """
    Retrieve, update or delete a code snippet.
    """
    try:
        snippet = informationinput.objects.get(pk=pk)
    except informationinput.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        serializer = SnippetSerializer(snippet)
        return JsonResponse(serializer.data)

    elif request.method == 'PUT':
        data = JSONParser().parse(request)
        serializer = SnippetSerializer(snippet, data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data)
        return JsonResponse(serializer.errors, status=400)

    elif request.method == 'DELETE':
        snippet.delete()
        return HttpResponse(status=204)