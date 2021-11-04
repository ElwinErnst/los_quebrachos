# frozen_string_literal: true

class CreateBathrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :bathrooms do |t|
      t.string :ubication
      t.integer :shower
      t.boolean :gender

      t.timestamps
    end
  end
end
