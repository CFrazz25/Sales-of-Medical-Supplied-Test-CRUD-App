class Lead < ApplicationRecord
  #belongs_to :vendor

  validates_presence_of :first_name, :last_name, :phone_number, :disposition, :status, :center_code

  def self.search(search, category)
    if category == "First Name"
      category = 'first_name'
    elsif category == "Last Name"
      category = 'last_name'
    elsif category == "Phone Number"
      category = 'phone_number'
    elsif category == "Disposition"
      category = 'disposition'
    elsif category == "Status"
      category = 'status'
    elsif category == "Center Code"
      category = 'center_code' 
     return where("#{category} = ?", search)  
    end
  
  where("#{category} LIKE ?", "%#{search}%")
  end
end
