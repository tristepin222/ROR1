# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
# Clear records in tables with foreign key constraints
PersonBelongsToClassroom.destroy_all
PersonEvaluateExam.destroy_all
PersonHaveExam.destroy_all
PersonLearnSubject.destroy_all
PersonTeachSubject.destroy_all

# Clear records in tables without foreign key constraints
Classroom.destroy_all
Exam.destroy_all
Person.destroy_all
Locality.destroy_all
Subject.destroy_all


# Create localities
localities = Locality.create([
  { name: 'Locality 1', postal_code: 12345 },
  { name: 'Locality 2', postal_code: 67890 },
  { name: 'Locality 3', postal_code: 67890 }
])

# Create subjects
subjects = Subject.create([
  { name: 'Mathematics' },
  { name: 'Science' },
  { name: 'History' }
])

# Create classrooms
classrooms = Classroom.create([
  { name: 'Classroom 1', number: 101, room: 1 },
  { name: 'Classroom 2', number: 102, room: 2 },
  { name: 'Classroom 3', number: 102, room: 2 }
])

# Create people (both teachers and students)
people = Person.create([
  { gender: 'Male', first_name: 'John', last_name: 'Doe', birth_date: Date.new(1980, 1, 1), address: '123 Main St', password: "12341234", password_confirmation: "12341234", phone_number: '123-456-7890', email: 'john@example.com', is_teacher: true, locality: localities.first, type: 'Teacher' },
  { gender: 'Female', first_name: 'Jane', last_name: 'Smith', birth_date: Date.new(1990, 2, 2), address: '456 Elm St', password: "12341234", password_confirmation: "12341234", phone_number: '987-654-3210', email: 'jane@example.com', is_teacher: false, locality: localities.second, type: 'Student' },
  { gender: 'Female', first_name: 'Jane', last_name: 'Smith', birth_date: Date.new(1990, 2, 2), address: '456 Elm St', password: "12341234", password_confirmation: "12341234", phone_number: '987-654-3210', email: 'jane2@example.com', is_teacher: false, locality: localities.third, type: 'Dean' }
])

# Assign people to classrooms
person_classroom_associations = PersonBelongsToClassroom.create([
  { person: people.first, classroom: classrooms.first, start_date: Date.new(2024, 1, 1) },
  { person: people.second, classroom: classrooms.second, start_date: Date.new(2024, 1, 1) },
  { person: people.third, classroom: classrooms.third, start_date: Date.new(2024, 1, 1) }
])

# Create exams
exams = Exam.create([
  { date: Date.new(2024, 3, 14), title: 'Midterm Exam', coefficient: 0.5, subject: subjects.first }
])

# Other associations and seeds as needed
