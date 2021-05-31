from django.shortcuts import render, redirect
from .forms import UserRegisterForm, UserUpdateForm, ProfileUpdateForm, LoginForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from .auth import unauthenticated_user

def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Your account has been created successfully. You are now able to login')
            return redirect('login')
    else:
        form = UserRegisterForm()
    
    return render(request, 'users/register.html', {'form': form, 'activate_register': 'active'})

@login_required
def profile(request):
    if request.method == 'POST':
        u_form = UserUpdateForm(request.POST, instance=request.user)
        p_form = ProfileUpdateForm(request.POST, request.FILES, instance=request.user.profile)
        if u_form.is_valid() and p_form.is_valid():
            u_form.save()
            p_form.save()
            messages.success(request, f'Your account has been updated')
            return redirect('profile')
    else:
        u_form = UserUpdateForm(instance=request.user)
        p_form = ProfileUpdateForm(instance=request.user.profile)

    context =  {
        'u_form': u_form,
        'p_form': p_form,
        'activate_profile': 'active',
    }
    return render(request, 'users/profile.html', context)


@unauthenticated_user
def login_user(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            data = form.cleaned_data
            user = authenticate(request, username=data['username'], password = data['password'])
            if user is not None:
                if not user.is_superuser:
                    login(request, user)
                    return redirect('/blog')
                elif user.is_superuser:
                    login(request, user)
                    return redirect('/admin-dashboard')
                else:
                    messages.add_message(request, messages.ERROR,'Invalid Username and Password')
            else:
                messages.add_message(request, messages.ERROR, 'Invalid Username and Password')

                return render(request, 'users/login.html', {'form': form, 'activate_login':'active'})

    context = {
        'form': LoginForm,
        'activate_login': 'active',
    }
    return render(request, 'users/login.html', context)





