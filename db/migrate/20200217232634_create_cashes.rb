class CreateCashes < ActiveRecord::Migration[6.0]
  def change
    create_table :cashes do |t|
      t.float :value
      t.date :date
      t.string :kind
      t.text :note

      t.timestamps
    end
  end
end
