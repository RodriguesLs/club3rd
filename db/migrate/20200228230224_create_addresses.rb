class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :district
      t.string :city
      t.string :number
      t.string :complement
      t.string :cep, limit: 9
      t.string :state, limit: 2
      t.references :costumer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
