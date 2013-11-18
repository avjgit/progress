#Name of the application
Progress - activity (eg, University’s course) progress management system

#The team
The project is going to be developed by one programmer, Andrejs Jurčenoks (aj05044)

#What is being developed
The Progress application allows clean & simple overview of activities (like University
courses) and progress through activities milestones (requirements).

#What problem is being solved
As a student, I find myself collecting all requirements (which could be specified either in pdf
documents, or in online system (together with lecture and other useful and important, but
also less important information), or in plain text on web) and compiling it all in one list, and
afterwards marking the progress - ‘todo’, submitted’ and ‘redo’ or ‘done’. Although in study
supporting online system at university one can find such functionality, I think user
experience of such a system could be better. The system I imagine would be most simple,
“one-screen” clean looking dashboard. This web application could be used for any purposes -
studies at university or self-study, or sporttraining, or progress through personal goals.

#User roles & authorization
The application can be accessed by anyone, but most actions parts are allowed to authorized
users only. User roles are: “administrators” - allowed to configure system; “coaches” -
create courses, approve applications to course, check requirements submissions; and
“students” - apply to courses, mark requirements as submitted.
Courses and courses couches are visible to all visitors.
Course students are visibles to course coach.
Course student progress is visible to student and coach.
For member registration is used authentication provided by Google and Facebook.

#Typical use cases
Site visitors registers to system. As registred users, they can create different courses, and
steps required to complete this course. The user, created a course receives a role of a couch
of this particular course.
Other registred users can view information (description, requirements and coach) of all
courses, and apply to them. Course creator can approve or deny these course applications.
Users, who’s applications for some course have been approved, receive a role of a student of
this particular course. Being a student, when they fulfilled some requirement, mark it as
submitted.
Coach can mark submitted requirements as completed or failed.

#Development environment
Application will be developed in Ruby programming language, using Ruby on Rails
framework, git as version control system, backing up at [GitHub](https://github.com/avjgit/progress). PostgreSQL database will
be used for data storage. Application is planned to be hosted on Heroku.

#Protection against CSRF/XSRF attacks
Will be assured by hidden authencity token within each form and method
protect_from_forgery [built-in](http://blog.bigbinary.com/2012/05/10/csrf-and-rails.html) into framework.