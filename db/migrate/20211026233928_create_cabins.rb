class CreateCabins < ActiveRecord::Migration[6.1]
  def change
    create_table :cabins do |t|
      t.string :name
      t.integer :price
      t.integer :bed
      t.boolean :bathroom # falso = baño compartido // true = baño privado
      t.boolean :frigobar 

      t.timestamps
    end
  end
end
