class CreateOwnerInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :owner_infos do |t|
      t.string :name
      t.string :ownership_percent
      t.string :date_of_birth
      t.string :ssn
      t.string :email_address
      t.integer :home_address_id

      t.timestamps
    end
  end
end
