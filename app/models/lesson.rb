class Lesson < ApplicationRecord
  belongs_to :person
  belongs_to :subject

  validates :date, comparison: { greater_than_or_equal_to: Date.today }, on: :create
end
