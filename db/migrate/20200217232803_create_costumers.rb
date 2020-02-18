class CreateCostumers < ActiveRecord::Migration[6.0]
  def change
    create_table :costumers do |t|
      t.string :name
      t.boolean :status
      t.string :rg
      t.string :cpf
      t.string :phone
      t.string :mobile_phone
      t.date :date_of_birth

      t.timestamps
    end
  end
end
