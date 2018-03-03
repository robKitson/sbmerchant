class CreateMerchantApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :merchant_applications do |t|
      t.string :name

      t.timestamps
    end
  end
end
