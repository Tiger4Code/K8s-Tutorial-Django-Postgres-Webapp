from django.shortcuts import render

# app_name/views.py
from django.http import HttpResponse
from .models import Item

def home(request):
    items = Item.objects.all()
    items_list = "\n".join([f"{item.name}: {item.description}" for item in items])
    return HttpResponse(f"Items:\n{items_list}")