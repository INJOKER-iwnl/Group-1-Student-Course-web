# Student Course Hub

The **Student Course Hub** is a web-based application designed to manage university courses, programmes, staff, and student registrations. It provides an interface for administrators, students, and staff to interact with the system.

## Features

### Admin Features
- **Dashboard**: View statistics on programmes, modules, and students.
- **Programme Management**: Add, edit, and manage programmes.
- **Module Management**: Add, edit, and manage modules.
- **Mailing List**: View active student registrations for programmes.

### Student Features
- **Course Exploration**: Browse available undergraduate and postgraduate programmes.
- **Register Interest**: Register interest in specific programmes.
- **Unregister Interest**: Remove registration for programmes.

### Staff Features
- **Staff Directory**: View staff profiles, including job titles, contact information, and biographies.

# Student Course Hub

## Project Structure
```
│   index.php
│   README.md
│   student_course_hub.sql       
│   style.css
│   
├───admin
│   │   add_modules.php
│   │   add_programmes.php       
│   │   dashboard.php
│   │   dashboardprim.html       
│   │   edit_programmes.php      
│   │   module.php
│   │   programme.php
│   │   publish_unpublish.php    
│   │   save_modules.php
│   │   save_programmes.php      
│   │   
│   └───assets
│       └───css
│               addmod.css
│               addpro.css
│               dash.css
│               dash2.css
│
├───Courses
│       courses.php
│       courses_front.php
│       db_connect.php
│       styles.css
│
├───database
│   │   db.php
│   │   migration.php
│   │   staff.php
│   │   user.php
│   │
│   └───assets
│       └───img
│               CTEC2712-01-HCI-Intro.pptx
│               teacher1.jpg - teacher20.jpg
│
├───images
│       fb.png
│       in.png
│       insta.jpg
│       ss.jpg
│       twit.png
│
├───login
│       db_connect.php
│       login.php
│       registration.php
│
├───registration
│       db_connect.php
│       mailing_list.php
│       register.php
│       register_front.php
│       unregister.php
│       unregister_front.php
│
└───staff
    │   db_connect.php
    │   staff.php
    │   staff_details.php
    │
    └───staff_photo
            alice.jpg - william.jpg
```