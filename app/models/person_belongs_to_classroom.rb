class PersonBelongsToClassroom < ApplicationRecord
  belongs_to :person
  belongs_to :classroom
end
