class Topic < ApplicationRecord
  has_many :courses
  belongs_to :subject
end
