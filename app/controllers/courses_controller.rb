class CoursesController < ApplicationController
    def admin
        @courses = Course.all
        render json: @courses
    end
end
