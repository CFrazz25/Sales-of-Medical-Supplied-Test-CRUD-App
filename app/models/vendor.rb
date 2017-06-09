class Vendor < User
  has_many :leads
  
  validates_presence_of :center_code

  def self.search(search, category)
    if category == "First Name"
      category = 'first_name'
    elsif category == "Last Name"
      category = 'last_name'
    elsif category == "Email"
      category = 'email'
    elsif category == "Center Code"
      category = 'center_code' 
      # if search.is_a? String
      #   return @errors = "please put in valid number"
      # end
     return where("#{category} = ?", search)  
    end
  
  where("#{category} LIKE ?", "%#{search}%")
  end
end