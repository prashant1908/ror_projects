class Product < ActiveRecord::Base
	require 'carrierwave/orm/activerecord'

	mount_uploader :avatar, AvatarUploader
	  	
belongs_to :user
belongs_to :category
has_many :comments
after_save :check_function

def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    all
  end
end



def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |product|
      csv << product.attributes.values_at(*column_names)
    end
  end
end

def check_function
  end


end
