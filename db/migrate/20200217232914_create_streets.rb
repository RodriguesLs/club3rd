class CreateStreets < ActiveRecord::Migration[6.0]
  def change
    create_table :streets do |t|
      t.string :district
      t.string :number
      t.string :complement
      t.string :cep
      t.string :state
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
