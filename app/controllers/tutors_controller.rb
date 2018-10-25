class TutorsController < ApplicationController
    def create 
    tutors=Tutor.create(params.permit(:name,:skill,:mail,:career,:password,:birthDate))
    render json: tutors
    end

    def update
        tutor = Tutor.find(params[:idTutor])
        tutor.update(params.permit(:name,:skill,:mail,:career,:password,:birthDate))
        render json: tutor
    end
end
