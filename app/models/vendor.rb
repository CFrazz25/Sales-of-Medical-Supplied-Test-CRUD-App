class Vendor < User
  has_many :leads
  
  validates_presence_of :center_code
end