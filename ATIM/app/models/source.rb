class Source < ActiveRecord::Base
  # attr_accessible :title, :body

  validates_presence_of :title, :citation

  belongs_to :thesis

end
