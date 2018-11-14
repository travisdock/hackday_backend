class Course < ApplicationRecord
    has_many :admin_course
    has_many :admins, :through => :admin_course
    has_many :assets
end