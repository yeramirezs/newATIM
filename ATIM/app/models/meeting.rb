class Meeting < ActiveRecord::Base
  belongs_to :thesis
  validates_presence_of :title, :fecha, :thesis_id
  has_many :commitments
  has_many :meeting_notes

end
