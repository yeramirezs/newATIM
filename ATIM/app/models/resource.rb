class Resource < ActiveRecord::Base
  validates_presence_of :section_id, :title

  attr_accessible :description, :file, :section_id, :title

  has_attached_file :file, :url => "/files/resources/:basename.:extension",
                    :path => ":rails_root/public/files/resources/:basename.:extension",
                    :default_url => "/images/default/missing_:style.png"

  attr_accessor :file_file_name
  attr_accessor :file_content_type
  attr_accessor :file_file_size
  attr_accessor :file_updated_at

  validates_attachment_size :file, :less_than => 32.megabytes

  belongs_to :section


end
