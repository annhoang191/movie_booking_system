module BookingSeatsHelper
  def booked_seat schedule_id, seat_id
    reservation = Reservation.find_by schedule_id: schedule_id, seat_id: seat_id
    reservation ? "red-highlight" : ""
  end
end
