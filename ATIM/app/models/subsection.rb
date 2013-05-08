class Subsection < ActiveRecord::Base
  attr_accessible :description, :name, :section_id, :thesis_id

  belongs_to :thesis
  belongs_to :section
  has_many :deliverables
end
