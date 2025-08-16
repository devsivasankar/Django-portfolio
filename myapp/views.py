from django.shortcuts import render, redirect
from .models import *


def IndexView(request):
    profile = ProfileModel.objects.all()
    summary = SummaryModel.objects.all()
    skills = SkillModel.objects.all()
    projects = ProjectModel.objects.all()
    context = {
        "profile": profile,
        "summary": summary,
        "skills": skills,
        "projects": projects
    }
    return render(request, "index.html", context)



def ProjectsView(request):
    return render(request, "projects.html")