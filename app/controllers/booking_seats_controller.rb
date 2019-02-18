class BookingSeatsController < ApplicationController
  before_action :authenticate_user!

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

  def seat_params
    params.permit :user_id
  end
end
