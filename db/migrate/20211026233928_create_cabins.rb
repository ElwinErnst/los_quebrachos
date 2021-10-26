class CreateCabins < ActiveRecord::Migration[6.1]
  def change
    create_table :cabins do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
