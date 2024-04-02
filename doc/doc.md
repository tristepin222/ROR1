# Student Grade Management System

28.03.2024

## Authors

Jessy Borcard

## Overview

The Student Grade Management System is a web application built using Ruby on Rails that allows teachers and administrators to efficiently manage and track student grades. The system provides functionalities for creating and managing classes, subjects, exams, and students' grades. It aims to streamline the grading process, improve communication between teachers and students, and provide insights into student performance.

Key Features:
- User Authentication: Implement user authentication and authorization to differentiate between teachers, administrators, and students. Users should be able to sign up, log in, and access functionalities based on their roles.

- Class Management: Enable teachers to create classes, assign subjects to classes.

- Subject Management: Allow deans to create and manage subjects offered in the school curriculum. Teachers can assign subjects to classes based on the curriculum.

- Exam Management: Enable teachers to create exams for each subject, specify the exam date, title, and coefficient (weightage), and associate exams with subjects. Teachers should be able to view and manage the list of exams for each subject.

- Grade Entry: Provide teachers with the ability to enter grades for students for each exam. Grades may be numeric.

- Grade Calculation: Automatically calculate the overall grade for each student based on the grades obtained in individual exams and the exam coefficients.
  
- Grade History: Maintain a history of grades entered for each student, allowing teachers to track changes in grades over time and view historical grade records.

- Lesson History: Record and track the history of lessons conducted for each subject and student. Teachers can view past lesson details, including dates, topics covered.


## Roles

### Students

Students can view and edit their profile, they can also view their grades

### Teachers

Teachers can edit, view, destroy and create students, create, edit and delete grades for students

### Deans

Deans has root access, they can edit, view, destroy and create students, classes, lessons, subjects, exams, grades, and teachers.

## Changes from MCD and MLD

### STI

Using Single Table Inheritance (STI) in Rails provides several benefits, despite potentially violating normalization principles such as those outlined in database normalization forms. Here's why STI is often considered advantageous in Rails applications.

STI allows for a simple and intuitive way to represent inheritance hierarchies in object-oriented programming within a relational database. It reduces complexity by keeping related models in a single database table, making it easier to understand and maintain the codebase. Additionally, STI can lead to better performance compared to other inheritance strategies like Class Table Inheritance (CTI) or Concrete Table Inheritance (CTI). Since all subclasses share the same table, querying and indexing are typically more efficient, resulting in faster database operations.

STI promotes clean and concise code organization by grouping related models together in a single table. It reduces redundancy by eliminating the need to duplicate common fields across multiple tables, thereby reducing the likelihood of errors and inconsistencies. Moreover, STI results in a simpler database schema with fewer tables, making it easier to manage and evolve over time. It reduces the need for complex joins or associations between related tables, which can simplify database queries and migrations.


While STI may not strictly adhere to database normalization principles, its benefits often outweigh the drawbacks in the context of Rails applications. However, it's essential to carefully consider the trade-offs and potential performance implications when deciding whether to use STI or alternative inheritance strategies based on the specific requirements and constraints of the application.

[pros and cons of using STI](https://stackoverflow.com/questions/8884364/pros-and-cons-of-single-table-inheritance-for-assets-in-rails)

Because of our rails app having, students, deans and teacher, sharing all the same fields, that are present in model Person, STI isn't a problem.

Data integrity is kept while making easier to work with devise and adding roles is simple.

Also, the way rails manages STI in our project doesn't violates normal forms, because the column type in the table person, only represent one data 1NF is kept


### Archiving

it's managed with dates, lessons can be archived by deans, and once archived, the date is just set to yesterday's date, considered as yesterday's date

thought process is, that lessons gets archived by themselves by their end date being older than the current date, or by manually set by a dean

### Historic

Grade historic can be viewed in a student grades
