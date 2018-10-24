class CoursesController < ApplicationController

    def show
        tutor = Tutor.find(params[:idTutor])
        courses = tutor.courses
        curso = courses.select{|x| x.topic_id == 1}
        render json: curso
    end

    def create
        tutor = Tutor.find(params[:idTutor])
        course = Course.create(params.permit(:status,:price,:topic_id).merge :tutor_id => tutor.id)
        render json: tutor.courses

    end
    def register
        student = Student.find(params[:idStudent])
        course = Course.find(params[:idCourse])
        #student.courses << course
        course.students << student
        render json: student.courses
    end
end
