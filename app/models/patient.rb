class Patient < ActiveRecord::Base
  attr_accessible :address, :name, :phone

  has_many :appointments
  has_many :doctors, :through => :appointments
end
