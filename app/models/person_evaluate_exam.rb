class PersonEvaluateExam < ApplicationRecord
  belongs_to :person
  belongs_to :exam
  accepts_nested_attributes_for :exam
end
