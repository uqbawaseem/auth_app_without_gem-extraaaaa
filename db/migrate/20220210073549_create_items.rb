class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :quantity

      t.timestamps
    end
  end
end
