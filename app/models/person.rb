class Person < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :locality, optional: true
  has_many :person_belongs_to_classrooms, autosave: true
  has_many :person_have_exams
  has_many :person_evaluate_exams
  has_many :person_learn_subjects
  has_many :person_teach_subjects

  has_many :classrooms, through: :person_belongs_to_classrooms, autosave: true
  has_many :subjects, through: :person_learn_subjects
  has_many :subjects, through: :person_teach_subjects
  has_many :exams, through: :person_have_exams
  has_many :exams, through: :person_evaluate_exams
  
  accepts_nested_attributes_for :locality
  accepts_nested_attributes_for :classrooms

  def teacher?
    self.type == 'Teacher'
  end
  def dean?
    self.type == 'Dean'
  end
end
