class MeetingNote < ActiveRecord::Base
  validates_presence_of :note
  belongs_to :meeting
  belongs_to :thesis


end
