class PersonLearnSubject < ApplicationRecord
  belongs_to :person
  belongs_to :subject
end
