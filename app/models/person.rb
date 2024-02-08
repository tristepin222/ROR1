class Person < ApplicationRecord
  belongs_to :locality
  has_many :subjects, through: :person_learn_subjects
  has_many :subjects, through: :person_teach_subjects
  has_many :exams, through: :person_have_exams
  has_many :exams, through: :person_evaluate_exams
  has_many :belongs_to, through: :belongs_to
end
