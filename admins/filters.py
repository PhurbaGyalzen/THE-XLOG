import django_filters
from blog.models import Post
from django_filters import CharFilter

class PostFilter(django_filters.FilterSet):
    title_contains = CharFilter(field_name='title',lookup_expr='icontains')

    class Meta:
        model = Post
        fields = ""