class Lead < ApplicationRecord
  #belongs_to :vendor

  validates_presence_of :first_name, :last_name, :phone_number, :disposition, :status, :center_code
end
