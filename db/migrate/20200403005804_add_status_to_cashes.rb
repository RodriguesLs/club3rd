class AddStatusToCashes < ActiveRecord::Migration[6.0]
  def change
    add_column :cashes, :status, :boolean
  end
end
