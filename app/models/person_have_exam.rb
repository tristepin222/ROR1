class PersonHaveExam < ApplicationRecord
  belongs_to :person
  belongs_to :exam
end
