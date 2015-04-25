class Product < ActiveRecord::Base
	require 'carrierwave/orm/activerecord'

	mount_uploader :avatar, AvatarUploader
	   has_many :comments, :dependent => :destroy
end
