class AdminCourse < ApplicationRecord
    belongs_to :course
    belongs_to :admin
end
