class CoursesController < ApplicationController

    # get /courses/:id/admin for Chris
    def admin
        @course = Course.find(params[:id])
        render json: @course, serializer: CourseAdminSerializer
    end

    # get /courses/:id for Mike
    def iframe
        @course = Course.find(params[:id])
        render json: @course
    end

    def index
        @courses = Course.all
        render json: @courses, each_serializer: SimpleCourseSerializer
    end
    
end
