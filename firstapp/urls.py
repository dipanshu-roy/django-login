from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('admin-login', views.AdminLogin, name='admin-login'),
    path('password-request', views.PasswordRequest, name='password-request'),
    path('logout', views.logoutUser, name='logout'),
    path('dashboard', views.dashboard, name='dashboard'),
]