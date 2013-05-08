class MeetingResource < ActiveRecord::Base
  # attr_accessible :description

  validates_presence_of :thesis_id, :meeting_id, :description

  attr_accessible  :thesis_id, :meeting_id, :description, :file_name, :file

  has_attached_file :file, :url  => "/files/resources/:basename.:extension",
                    :path        => ":rails_root/public/files/resources/:basename.:extension",
                    :default_url => "/images/default/missing_:style.png"

  attr_accessor :file_file_name
  attr_accessor :file_content_type
  attr_accessor :file_file_size
  attr_accessor :file_updated_at

  validates_attachment_size :file, :less_than => 32.megabytes

  belongs_to :meeting

end
