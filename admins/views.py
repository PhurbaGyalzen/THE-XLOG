from django.shortcuts import render, redirect
from users.forms import UserRegisterForm, UserUpdateForm, ProfileUpdateForm
from users.auth import admin_only
from django.contrib.auth.models import User
from blog.models import Post
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from users.models import profile
from .filters import PostFilter



@login_required
@admin_only
def get_post(request):
    posts = Post.objects.all()
    posts_filter= PostFilter(request.GET, queryset=posts)
    posts_final = posts_filter.qs
    context = {
        'posts': posts_final,
        'post_filter': posts_filter,
    }
    return render(request, 'admins/getPost.html', context)

@login_required
@admin_only
def admin_profile(request):
    if request.method == 'POST':
        u_form = UserUpdateForm(request.POST, instance=request.user)
        p_form = ProfileUpdateForm(request.POST, request.FILES, instance=request.user.profile)
        if u_form.is_valid() and p_form.is_valid():
            u_form.save()
            p_form.save()
            messages.success(request, f'Your account has been updated')
            return redirect('/admin-dashboard/profile')
    else:
        u_form = UserUpdateForm(instance=request.user)
        p_form = ProfileUpdateForm(instance=request.user.profile)

    context =  {
        'u_form': u_form,
        'p_form': p_form,
        'activate_admin_profile': 'active',
    }
    return render(request, 'admins/admin-profile.html', context)


@login_required
@admin_only
def admin_dashboard(request):
    users = User.objects.filter(is_superuser=0)
    users_count = users.count()
    admins = User.objects.filter(is_superuser=1)
    admins_count = admins.count()
    posts_count = Post.objects.all().count()
    total_users = User.objects.all().count()
    context = {
        'users': users_count,
        'admins': admins_count,
        'posts': posts_count,
        'total_users': total_users,
        'activate_home': 'active',
    }
    return render(request, 'admins/adminDashboard.html', context)

@login_required
@admin_only
def get_user(request):
    users_all = User.objects.all()
    users = users_all.filter(is_superuser=0)
    context = {
        'users': users,
        'activate_user': 'active',
    }
    return render(request, 'admins/displayUser.html', context)

@login_required
@admin_only
def get_admin(request):
    users_all = User.objects.all()
    admins = users_all.filter(is_superuser=1)
    context = {
        'admins': admins,
        'activate_admin': 'active'
    }
    return render(request, 'admins/displayAdmin.html', context)

@login_required
@admin_only
def update_user_to_admin(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_superuser = 1
    user.save()
    messages.add_message(request, messages.SUCCESS, f'{user.username} has been updated to Admin')
    return redirect('/admin-dashboard')

@login_required
@admin_only
def update_admin_to_user(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_superuser = 0
    user.save()
    messages.add_message(request, messages.SUCCESS, f'{user.username} has been updated to User')
    return redirect('/admin-dashboard')

@login_required
@admin_only
def register_user_admin(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'User account has been created successfully')
            return redirect('/admin-dashboard')
    else:
        form = UserRegisterForm()
    return render(request, 'admins/add-user-admin.html', {'form': form, 'activate_add_user': 'active'})


@login_required
@admin_only
def del_user(request, username):    
    u = User.objects.get(username = username)
    u.delete()
    messages.add_message(request, messages.SUCCESS, f'{username} has been deleted successfully.')            
    return redirect('/admin-dashboard')



