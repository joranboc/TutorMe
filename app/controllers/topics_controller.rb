class TopicsController < ApplicationController
    def index
        subject = Subject.find(params[:idSubject])
        topics = subject.topics
        render json: topics
    end
    def tutors
        topic = Topic.find(params[:idTopic])
        cursos = topic.courses
        tutors =  cursos.map{|x| x.tutor}
        final = {:topic => params[:idTopic],:tutors => tutors}
        puts final
        render json: final
    end
    def create
        subject = Subject.find(params[:idSubject])
        topic = Topic.create(params.permit(:name).merge :subject_id => subject.id)
        render json: topic
    end

end
