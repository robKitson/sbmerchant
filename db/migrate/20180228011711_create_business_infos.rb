class CreateBusinessInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :business_infos do |t|
      t.integer :merchant_application_id
      t.string :business_info
      t.string :business_name
      t.string :legal_name
      t.integer :location_address_id
      t.string :email
      t.string :website
      t.integer :billing_address_id
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_fax
      t.string :contact_email
      t.string :customer_service_email
      t.boolean :retreival_request_to_business_address
      t.string :retreival_request_fax_number
      t.integer :mcc_id

      t.timestamps
    end
  end
end
