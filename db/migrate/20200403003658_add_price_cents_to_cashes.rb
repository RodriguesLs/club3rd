class AddPriceCentsToCashes < ActiveRecord::Migration[6.0]
  def change
    add_column :cashes, :price_cents, :integer, default: 0
  end
end
