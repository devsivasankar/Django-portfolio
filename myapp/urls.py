from django.urls import path
from .views import *

urlpatterns = [
    path("", IndexView, name="index"),
    path("projects-page/", ProjectsView, name="projects"),
]