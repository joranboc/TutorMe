class Course < ApplicationRecord
  belongs_to :topic
  belongs_to :tutor
  has_and_belongs_to_many :students
end
