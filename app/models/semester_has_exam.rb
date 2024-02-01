class SemesterHasExam < ApplicationRecord
  belongs_to :semester
  belongs_to :exam
end
