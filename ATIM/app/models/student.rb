class Student < ActiveRecord::Base

	belongs_to :thesis
	validates_presence_of :name, :email, :thesis_id
	validates_uniqueness_of :email

	def self.search(search)
	  if search
	    find(:all, :conditions => ['email = ?', "#{search}"]).first
	  end
	end
end
