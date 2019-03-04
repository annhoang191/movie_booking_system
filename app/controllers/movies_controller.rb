class MoviesController < ApplicationController
  def index
    @movies = Movie.page(params[:page]).includes :schedules
    @cinemas = Cinema.all.includes :auditoria
    @auditoria = Auditorium.all.includes :schedules
    if session[:auditorium_id].nil?
      @seats = Seat.where auditorium_id: 2
    else
      @seats = Seat.where auditorium_id: session[:auditorium_id]
    end
  end
end
