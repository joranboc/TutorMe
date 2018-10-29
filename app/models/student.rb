class Student < ApplicationRecord
    has_many :chats
    has_and_belongs_to_many :courses
    belongs_to :user

end
