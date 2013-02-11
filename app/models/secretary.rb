class Secretary < ActiveRecord::Base
  attr_accessible :doctor_id, :name, :phone

  belongs_to :doctor
end
