from django.db import models


class ProfileModel(models.Model):
    profile = models.ImageField()
    cover = models.ImageField()

    def __str__(self):
        return "profile"

class SummaryModel(models.Model):
    summary = models.TextField()

    def __str__(self):
        return "summary"

    
class SkillModel(models.Model):
    skill = models.CharField(max_length=25)
    image = models.ImageField()

    def __str__(self):
        return self.skill


class ProjectModel(models.Model):
    project_name = models.CharField(max_length=50)
    project_image = models.ImageField()
    tech_stack = models.CharField(max_length=250)
    project_desc = models.TextField()
    github_url = models.URLField()

    def __str__(self):
        return self.project_name