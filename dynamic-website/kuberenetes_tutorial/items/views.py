from django.shortcuts import render

# app_name/views.py
from django.http import HttpResponse

def home(request):
    return HttpResponse("Welcome to Kubernetes Tutorial with Noor!!")

