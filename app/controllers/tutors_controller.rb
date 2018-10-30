class TutorsController < ApplicationController
    include Auth

    skip_before_action :authorize_request, only: :create

    def create 
    createUser
    tutors=Tutor.create!(params.permit(:name,:skill,:career,:birthDate).merge :user_id => @user.id)
    respo = {:create => @response,:tutor => tutors}
    json_response(respo, :created)

    end

    def update
        tutor = Tutor.find(params[:idTutor])
        tutor.update(params.permit(:name,:skill,:career,:birthDate))
        render json: tutor
    end
end
