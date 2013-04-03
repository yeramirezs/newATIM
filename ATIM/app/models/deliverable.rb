class Deliverable < ActiveRecord::Base

  validates_presence_of :thesis_id, :title

  attr_accessible :description, :file, :thesis_id, :title, :file_name

  has_attached_file :file, :url => "/files/deliverables/:basename.:extension",
                    :path => ":rails_root/public/files/deliverables/:basename.:extension",
                    :default_url => "/images/default/missing_:style.png"

  attr_accessor :file_file_name
  attr_accessor :file_content_type
  attr_accessor :file_file_size
  attr_accessor :file_updated_at

  validates_attachment_size :file, :less_than => 32.megabytes

  belongs_to :thesis

end
