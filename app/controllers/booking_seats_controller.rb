class BookingSeatsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_movie

  def new
    @cinemas = @movie.cinemas.includes(:auditoria).uniq
    @auditoria = Auditorium.all.includes :schedules
    @movies = Movie.all.includes :schedules
    if session[:auditorium_id].nil?
      @seats = Seat.where auditorium_id: 2
    else
      @seats = Seat.where auditorium_id: session[:auditorium_id]
    end
  end

  def create
    reservations = []
    if params[:seat_id]
      params[:seat_id].each do |seat_id|
        reservation = Reservation.new seat_params.merge(seat_id: seat_id, schedule_id: session[:schedule_id])
        reservations << reservation
      end

      if Reservation.import! reservations
        redirect_to root_path
        flash[:success] = t ".create_success"
      else
        flash.now[:danger] = t ".create_failed"
      end
    else
      flash.now[:danger] = "Chưa chọn ghế"
    end
  end

  def get_schedule_id_from_client
    session[:schedule_id] = params[:schedule_id]
  end

  private

  def load_movie
    @movie = Movie.find_by id: params[:movie_id]
  end

  def seat_params
    params.permit :user_id
  end
end
