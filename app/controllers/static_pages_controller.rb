class StaticPagesController < ApplicationController
  def home
    @movie = Movie.first
    @cinemas = Cinema.all.includes :auditoria
    @auditoria = Auditorium.all.includes :schedules
    @movies = Movie.all.includes :schedules
    @seats = Seat.where auditorium_id: session[:auditorium_id]
  end

  def filter_auditoria
    @auditoria = Auditorium.by_cinema params[:cinema_id]
    respond_to do |format|
      format.json {render json: {auditoria: @auditoria}}
    end
  end

  def get_schedules
    if params[:movie_id].nil? || params[:movie_id].blank?
      @schedules = Schedule.by_auditorium params[:auditorium_id]
    else
      @schedules = Schedule.by_auditorium_and_movie params[:auditorium_id], params[:movie_id]
    end
    respond_to do |format|
      format.json {render json: {schedules: @schedules}}
    end
  end

  def get_auditorium_id_from_client
    session[:auditorium_id] = params[:auditorium_id]
  end
end
