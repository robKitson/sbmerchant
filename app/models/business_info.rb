class BusinessInfo < ApplicationRecord

  belongs_to :merchant_application

  belongs_to :location_address, class_name:"Address"
  accepts_nested_attributes_for :location_address
  
  belongs_to :billing_address, class_name:"Address"
  accepts_nested_attributes_for :billing_address

  after_initialize do |business_info|
    self.location_address = Address.new if self.location_address.blank?
    self.billing_address = Address.new if self.billing_address.blank?
  end
end
