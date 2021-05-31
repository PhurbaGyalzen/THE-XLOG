from django import forms
from django.contrib.auth.models import User
from users.models import profile


class UserUpdateForm(forms.ModelForm):
    email = forms.EmailField()
    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'email']
        

class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = profile
        fields = ['image']