class TopicsController < ApplicationController
    def index
        subject = Subject.find(params[:idSubject])
        topics = subject.topics
        render json: topics
    end
    def tutores
        topic = Topic.find(params[:idTopic])
        cursos = topic.courses
        tutores =  cursos.map{|x| x.tutor}
        final = {:topic => params[:idTopic],:tutores => tutores}
        puts final
        render json: final
    end

end
