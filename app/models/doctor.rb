class Doctor < ActiveRecord::Base
  attr_accessible :name, :speciality

  has_one :secretary
  has_many :appointments
  has_many :patients, :through => :appointments
  

end
