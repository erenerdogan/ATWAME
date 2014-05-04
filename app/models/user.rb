class User < ActiveRecord::Base

	has_many :contents
	has_many :comments
	has_many :reports
	
	#attr_accessor :name, :email, :password, :picture, :manager
end
