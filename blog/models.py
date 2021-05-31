from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse
from ckeditor.fields import RichTextField
from PIL import Image


class Post(models.Model):
    title = models.CharField(max_length=150)
    content = RichTextField()
    description = models.CharField(max_length=300)
    thumbnail_image = models.ImageField(null=True, blank=True, upload_to="thumbImages/")
    date_posted = models.DateTimeField(default= timezone.now)
    author = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('blog:post-detail', kwargs={'pk':self.pk})  # reverse returns full path as string

    def save(self, *args, **kwargs):
        super(Post, self).save(*args, **kwargs)

        if (self.thumbnail_image):
            img = Image.open(self.thumbnail_image.path)
            # resizing the image before saving it in file system
            if img.height > 300 or img.width > 300:
                output_size = (300, 300)
                img.thumbnail(output_size)
                img.save(self.thumbnail_image.path)


