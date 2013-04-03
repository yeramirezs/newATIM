class Recommendation < ActiveRecord::Base

  validates_presence_of :recommendation, :thesis_id

  attr_accessible :recommendation, :created, :thesis_id

  belongs_to :thesis

end
