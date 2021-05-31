from django.contrib.auth import get_user_model
from django.test import TestCase

User = get_user_model()

class AdminTestCase(TestCase):

    def setUp(self):
        user_a = User(username='phurbagyalzensherpa', email='gyalzen@gmail.com')
        user_a_pw = 'testing321'
        self.user_a_pw = user_a_pw
        user_a.is_superuser = True
        user_a.is_staff = False
        user_a.set_password(user_a_pw)
        user_a.save()
        self.user_a = user_a
        user_b = User.objects.create_user('seconduser','second@gmail.com','testing321')
        self.user_b = user_b
        
    def test_user_count(self):
        user_count = User.objects.all().count()
        self.assertEqual(user_count, 2)

    def test_invalid_request(self):
        self.client.login(username=self.user_b.username, password ="testing321")
        response = self.client.post('/admin-dashboard/add-user/', {'username': 'testuser','password': 'testing321', 'email': 'email@gmail.com'})
        self.assertNotEquals(response.status_code, 200)

    def test_valid_request(self):
        self.client.login(username=self.user_a.username, password ="testing321")
        response = self.client.post('/admin-dashboard/add-user/', {'username': 'testuser','password': 'testing321', 'email': 'email@gmail.com'})
        self.assertEqual(response.status_code, 200)


