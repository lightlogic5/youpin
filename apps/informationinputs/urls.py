from django.conf.urls import url
from informationinputs.views import inforView

urlpatterns = [

    url(r'^inal/$', inforView.as_view()),
    # url(r'^snippets/(?P<pk>[0-9]+)/$', views.snippet_detail),
]