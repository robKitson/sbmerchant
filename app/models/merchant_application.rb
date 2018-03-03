class MerchantApplication < ApplicationRecord

  has_one :business_info

  after_initialize do |merchant_application|
    self.business_info = self.build_business_info if self.business_info.blank?
  end
end
