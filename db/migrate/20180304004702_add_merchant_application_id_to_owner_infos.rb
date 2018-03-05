class AddMerchantApplicationIdToOwnerInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :owner_infos, :merchant_application_id, :integer
  end
end
