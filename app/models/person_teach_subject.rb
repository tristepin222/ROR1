class PersonTeachSubject < ApplicationRecord
  belongs_to :person
  belongs_to :subject
end
