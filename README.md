# WEB DEVELOPMENT PROJECT
<h1 style="text-align: center">THE XLOG<h1>

<div style="text-align: center">
    <img src="https://i.ibb.co/mccTRX7/favicon.png" >
</div>

Admin: phurba
Password: teasting321

## Running this project

To get this project up and running you should start by having Python installed on your computer. It's advised you create a virtual environment to store your projects dependencies separately. You can install virtualenv with

```
pip install virtualenv
```

Clone or download this repository and open it in your editor of choice. In a terminal (mac/linux) or windows terminal, run the following command in the base directory of this project

```
> virtualenv venv
```

That will create a new folder `venv` in your project directory. Next activate it with this command on your windows powershell:

```
> venv/scripts/activate.bat
```

Then install the project dependencies with

```
> pip install -r requirements.txt
```


Create and configure the database settings in settings.py

Now, run the following command to setup your database

```
> python manage.py makemigrations

> python manage.py migrate
```



Now you can run the project with this command

```
> python manage.py runserver
```

Now click [here](http://127.0.0.1:8000/ "http://localhost:8000/") to see the project running on the local development server which is provided by Django itself.

Finally the setup has been completed.

> Keep smiling, Stay Coding -- Phurba Gyalzen Sherpa