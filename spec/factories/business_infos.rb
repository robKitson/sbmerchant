FactoryBot.define do
  factory :business_info do
    merchant_application_id 1
    business_info "MyString"
    business_name "MyString"
    legal_name "MyString"
    location_address_id 1
    email "MyString"
    website "MyString"
    billing_address_id 1
    contact_name "MyString"
    contact_phone "MyString"
    contact_fax "MyString"
    contact_email "MyString"
    customer_service_email "MyString"
    retreival_request_to_business_address false
    retreival_request_fax_number "MyString"
    mcc_id 1
  end
end
