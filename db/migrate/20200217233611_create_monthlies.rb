class CreateMonthlies < ActiveRecord::Migration[6.0]
  def change
    create_table :monthlies do |t|
      t.string :status
      t.string :price
      t.date :date
      t.references :costumer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
