class School < ActiveRecord::Base
  attr_accessible :name, :address, :city, :state, :zip, :phone
end
