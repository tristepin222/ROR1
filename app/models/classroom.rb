class Classroom < ApplicationRecord
  has_many :person_belongs_to_classroom
  has_many :people, through: :person_belongs_to_classroom
  validates :name, uniqueness: { case_sensitive: false }
end
