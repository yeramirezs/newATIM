class Section < ActiveRecord::Base
  attr_accessible :name, :thesis_id
  belongs_to :thesis
end
