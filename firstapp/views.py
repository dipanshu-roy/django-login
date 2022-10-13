from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.template import loader
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.models import User

def index(request):
    context = {'SITENAME': 'Home',}
    return HttpResponse(loader.get_template('index.html').render(context, request))

def AdminLogin(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        users = authenticate(username=username, password=password)
        if users is not None:
            login(request, users)
            return redirect("dashboard")
    context = {'SITENAME': 'LOGIN'}
    return HttpResponse(loader.get_template('login.html').render(context, request))
def PasswordRequest(request):
    if request.method == 'POST':
        email = request.POST['email']
        query = User.objects.filter(email=email).values()
        return HttpResponse(query.id)
    else
        return HttpResponse(loader.get_template('password-request.html').render(context, request))

def dashboard(request):
    if request.user.is_authenticated:
        context = {'SITENAME': 'dashboard'}
        return HttpResponse(loader.get_template('dashboard.html').render(context, request))
    else:
        return redirect('admin-login')

def logoutUser(request):
    logout(request)
    return redirect('admin-login')