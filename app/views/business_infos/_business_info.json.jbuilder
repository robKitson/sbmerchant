json.extract! business_info, :id, :merchant_application_id, :business_info, :business_name, :legal_name, :location_address_id, :email, :website, :billing_address_id, :contact_name, :contact_phone, :contact_fax, :contact_email, :customer_service_email, :retreival_request_to_business_address, :retreival_request_fax_number, :mcc_id, :created_at, :updated_at
json.url business_info_url(business_info, format: :json)