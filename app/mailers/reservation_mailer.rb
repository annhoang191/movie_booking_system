class ReservationMailer < ApplicationMailer
  def reservation_complete user, reservations
    @user = user
    @reservations = reservations
    @schedule = @reservations.first.schedule
    @seats = []
    @reservations.each do |reservation|
      @seats << reservation.seat
    end
    mail to: user.email, subject: "Đặt Vé Thành Công"
  end
end
