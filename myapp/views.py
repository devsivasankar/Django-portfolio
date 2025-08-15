from django.shortcuts import render, redirect
from .models import *


def IndexView(request):
    profile = ProfileModel.objects.all()
    summary = SummaryModel.objects.all()
    skills = SkillModel.objects.all()
    context = {
        "profile": profile,
        "summary": summary,
        "skills": skills
    }
    return render(request, "index.html", context)