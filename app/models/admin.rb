class Admin < ApplicationRecord
    has_secure_password
    has_many :admin_course
    has_many :courses, :through => :admin_course
end