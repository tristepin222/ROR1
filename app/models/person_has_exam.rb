class PersonHasExam < ApplicationRecord
  belongs_to :person
  belongs_to :exam
end
