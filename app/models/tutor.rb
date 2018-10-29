class Tutor < ApplicationRecord
    has_many :courses
    has_many :chats
    belongs_to :user
end

