class PersonHaveExam < ApplicationRecord
  belongs_to :person
  belongs_to :exam
  accepts_nested_attributes_for :person
  validates :grade, numericality: { in: 1..6 }
end
