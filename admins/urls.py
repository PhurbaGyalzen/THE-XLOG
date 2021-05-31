from django.urls import path
from . import views

urlpatterns =[
    path('', views.admin_dashboard),
    path('display-user/', views.get_user),
    path('display-admin/', views.get_admin),
    path('update-user-to-admin/<int:user_id>/', views.update_user_to_admin),
    path('update-admin-to-user/<int:user_id>/', views.update_admin_to_user),
    path('add-user/', views.register_user_admin),
    path('get-post/',views.get_post),
    path('delete-user/<str:username>/', views.del_user),
    path('profile/', views.admin_profile),
]
