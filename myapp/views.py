from django.shortcuts import render, redirect
from .models import *
from django.http import FileResponse, Http404
import os
from django.conf import settings


def IndexView(request):
    profile = ProfileModel.objects.all()
    summary = SummaryModel.objects.all()
    skills = SkillModel.objects.all()
    projects = ProjectModel.objects.all()[:2]
    context = {
        "profile": profile,
        "summary": summary,
        "skills": skills,
        "projects": projects
    }
    return render(request, "index.html", context)



def ProjectsView(request):
    projects = ProjectModel.objects.all()
    return render(request, "projects.html", {"projects": projects})



def Custom404(request, exception):
    return render(request, "404.html", status=404)