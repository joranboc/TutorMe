class User < ApplicationRecord
    has_one :student
    has_one :tutor
    has_secure_password
    validates_presence_of :email, :password_digest

end

