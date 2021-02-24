# **Bires project**

Bires project is a real estate web application which built on WAGTAIL, MYSQL, AWS S3

### **Getting started**

Step 1: Install virtualenv.

Step 2: pip install -r requirements.txt.

Step 3: open bires/settings/urls.py and comment three lines of code.

    # from project import views as search_views

    ....
    
    # path('listing-projects/', search_views.projects_list, name='projects_list'),
    
    # path('listing-projects/<str:slug>/', search_views.project_request_form, name='project_request_form')

Step 4: create file .env.

    NAME_DB = name of the database

    USER_DB = name of database user

    PASSWORD_DB = password for accessing database user

    HOST_DB = name of your server (localhost)

    PORT_DB = the port of database (3306)

    aws_access_key_id = access key of AWS S3

    aws_secret_access_key = secret access key of AWS S3

    bucket_name = the name of bucket of AWS S3  

Step 5: copy secret key in bires/settings/dev.py into .env (optional).
    
    SECRET_KEY = your secret key in dev.py

Step 6: 

    python manage.py migrate

Step 7: 
    
    python manage.py createsuperuser

Step 8: uncomment three code lines in bires/settings/urls.py.

Step 9: 
    
    python manage.py runserver

If you want to have some example on project, import the sql/database.sql into your database. This sql already created homepage, about-us, contact-us, listing-projects, listing-blogs, and listing-realtors

If not, you need to create and configure your own homepage, and create your own pages. However, when creating the listing-projects, listing-blogs, listing-realtors, their slugs should be the same name of the pages.

    In listing-projects promote/slug = listing-projects
    
    In listing-blogs promote/slug = listing-blogs
    
    In listing-realtors promote/slug = listing-realtors
