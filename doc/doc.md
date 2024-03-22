# Student Grade Management System

## Overview

The Student Grade Management System is a web application built using Ruby on Rails that allows teachers and administrators to efficiently manage and track student grades. The system provides functionalities for creating and managing classes, subjects, exams, and students' grades. It aims to streamline the grading process, improve communication between teachers and students, and provide insights into student performance.

Key Features:
- User Authentication: Implement user authentication and authorization to differentiate between teachers, administrators, and students. Users should be able to sign up, log in, and access functionalities based on their roles.

- Class Management: Enable teachers to create classes, assign subjects to classes.

- Subject Management: Allow deans to create and manage subjects offered in the school curriculum. Teachers can assign subjects to classes based on the curriculum.

- Exam Management: Enable teachers to create exams for each subject, specify the exam date, title, and coefficient (weightage), and associate exams with subjects. Teachers should be able to view and manage the list of exams for each subject.

- Grade Entry: Provide teachers with the ability to enter grades for students for each exam. Grades may be numeric or letter grades based on the grading system adopted by the institution.

- Grade Calculation: Automatically calculate the overall grade for each student based on the grades obtained in individual exams and the exam coefficients. Optionally, support different grading methods such as weighted averages or weighted sum of scores.

- Grade History: Maintain a history of grades entered for each student, allowing teachers to track changes in grades over time and view historical grade records.

- Lesson History: Record and track the history of lessons conducted for each subject and student. Teachers can view past lesson details, including dates, topics covered, and attendance records.


## Roles

### Students

Students can view and edit their profile, they can also view their grades

### Teachers

Teachers can edit, view, destroy and create students, create, edit and delete grades for students

### Deans

Deans has root access, they can edit, view, destroy and create students, classes, lessons, subjects, exams, grades, and teachers.

