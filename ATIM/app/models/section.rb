class Section < ActiveRecord::Base
  attr_accessible :name, :thesis_id
  belongs_to :thesis
  has_many :subsections
  has_many :resources

end
