from django.test import TestCase
from django.contrib.auth import get_user_model
from django.conf import settings

User = get_user_model()

class UserTestCase(TestCase):

    def setUp(self): #python's build-in unittest
        user_a = User(username='phurbagyalzensherpa', email='gyalzen@gmail.com')
        user_a_pw = 'testing321'
        self.user_a_pw = user_a_pw
        user_a.is_superuser = True
        user_a.is_staff = True
        user_a.set_password(user_a_pw)
        user_a.save()
        self.user_a = user_a

    def test_user_saved(self):
        user_count = User.objects.all().count()
        self.assertEqual(user_count, 1)
        self.assertNotEqual(user_count, 0)

    def test_user_password(self):
        user_a = User.objects.get(username="phurbagyalzensherpa")
        self.assertTrue(user_a.check_password(self.user_a_pw))

    def test_login_url(self):
        login_url = settings.LOGIN_URL
        data = {'username':  'phurbagyalzensherpa', 'password': self.user_a_pw}
        # response = self.client.post(url, {}, follow=True)
        response = self.client.post(login_url, data, follow=True)
        status_code = response.status_code
        redirect_path = response.request.get("PATH_INFO")
        self.assertNotEqual(redirect_path, settings.LOGIN_REDIRECT_URL)
        self.assertEqual(status_code, 200)

