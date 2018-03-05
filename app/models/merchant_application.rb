class MerchantApplication < ApplicationRecord

  has_one :business_info

  has_many :owner_infos

  after_initialize do |merchant_application|
    self.business_info = self.build_business_info if self.business_info.blank?
    self.owner_infos.build if self.owner_infos.empty?
  end
end
