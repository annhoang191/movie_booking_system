class StaticPagesController < ApplicationController
  def home
    @movie = Movie.first
    @cinemas = Cinema.all.includes :auditoria
    @auditoria = Auditorium.all.includes  :schedules
    @movies = Movie.all
  end

  def filter_auditoria
    cinema_id = params[:cinema_id]
    @auditoria = Auditorium.all.where cinema_id: cinema_id
    respond_to do |format|
      format.json {render json: {auditoria: @auditoria}}
    end
  end

  def get_schedules
    movie_id = params[:movie_id]
    auditorium_id  = params[:auditorium_id]
    @schedules = Schedule.where(auditorium_id: auditorium_id, movie_id: movie_id)
    respond_to do |format|
      format.json {render json: {schedules: @schedules}}
    end
  end
end
