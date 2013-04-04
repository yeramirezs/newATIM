class Commitment  < ActiveRecord::Base

  validates_presence_of :due_date, :description
  belongs_to :meeting
  belongs_to :thesis

  def meeting_date ( meeting_id)
    theMeeting = Meeting.find( meeting_id)
    return theMeeting.fecha.strftime("%Y/%m/%d")
  end

  def due_date_day ( due_date )
    return due_date.strftime("%Y/%m/%d")
  end

  def status_text ( status)
    return status ? "Closed" : "Open"
  end

  def overdue( )
    return !done && due_date < Time.now
  end

  def in2weeks( )
    return !done &&   Time.now > due_date - 14.days && Time.now <= due_date
  end
end

# Helper class para calcular los intervalos de fechas
class Fixnum
  def seconds  ; self ; end
  def minutes  ; self * 60 ; end
  def hours    ; self * 60 * 60 ; end
  def days     ; self * 60 * 60 * 24; end
  def ago      ; Time.now - self ; end
  def from_now ; Time.now + self ; end
end