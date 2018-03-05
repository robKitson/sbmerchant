json.extract! owner_info, :id, :name, :ownership_percent, :date_of_birth, :ssn, :email_address, :home_address_id, :created_at, :updated_at
json.url owner_info_url(owner_info, format: :json)
