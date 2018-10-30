class StudentsController < ApplicationController
    include Auth


    skip_before_action :authorize_request, only: :create

    def create
        createUser
        student = Student.create(params.permit(:name, :birthDate, :carreer ).merge :user_id => @user.id)       
        respo = {:create => @response,:student => student}
        json_response(respo, :created)  
    end

    def show
        student = Student.find(params[:idStudent])
        render json: student
    end

    def update
        student = Student.find(params[:idStudent])
        student.update(params.permit(:name, :birthDate, :carreer))
        render json: student
    end

end
