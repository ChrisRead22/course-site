class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.create(course_params)
        redirect_to course_path(params[:id])
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to course_path(@course)
    end

    def destroy
        Course.find(params[:id]).destroy
        redirect_to courses_path
    end

    def decrease
        @course = Course.find(params[:id])
        @course.update(seat_limit: @course.seat_limit - 1)
        redirect_to course_path(@course)
    end

    def course_params
        params.require(:course).permit(:name, :seat_limit, :classroom_number)
    end

end
