class TutorsController < ApplicationController
    def create 
    tutors=Tutor.create(params.permit(:name,:skill,:mail,:career,:password,:birthDate))
    render json: tutors
    end
end
