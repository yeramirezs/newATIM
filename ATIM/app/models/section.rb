class Section < ActiveRecord::Base
  attr_accessible :name, :thesis_id
  belongs_to :thesis
  has_many :subsections

end
