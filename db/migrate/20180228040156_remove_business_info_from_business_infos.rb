class RemoveBusinessInfoFromBusinessInfos < ActiveRecord::Migration[5.1]
  def change
    remove_column :business_infos, :business_info
  end
end
