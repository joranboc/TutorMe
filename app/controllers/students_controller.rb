class StudentsController < ApplicationController
    def create
        student = Student.create(params.permit(:name, :mail, :birthDate, :carreer, :password ))
        render json: student
    end

    def show
        student = Student.find(params[:idStudent])
        render json: student
    end


end
