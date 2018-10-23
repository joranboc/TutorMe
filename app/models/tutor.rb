class Tutor < ApplicationRecord
    has_many :courses
    has_many :chats
end

