class CoursesController < ApplicationController

    def show
        tutor = Tutor.find(params[:idTutor])
        topic = Topic.find(params[:idTopic])
        courses = tutor.courses
        course = courses.select{|x| x.topic_id == topic.id}
        render json: course 
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
    def update
        course = Course.find(params[:idCourse])
        course.update(params.permit(:status,:price))
        render json: course
    end
end
