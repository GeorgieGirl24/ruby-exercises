class Appointments
  attr_accessor :first_time_slot, :appointment_book
  def initialize
    @first_time_slot = first_time_slot
    @appointment_book = []
  end
  def earliest
    first_time_slot
    # self.appointment_book[1]
  end
  def at (time_slot)
    self.appointment_book << time_slot
    @first_time_slot = @appointment_book.min_by do |appointment|
        appointment.to_i
    end
  end
end
