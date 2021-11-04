# frozen_string_literal: true

class CreateCampings < ActiveRecord::Migration[6.1]
  def change
    create_table :campings do |t|
      t.string :ubication
      t.integer :area
      t.integer :tents

      t.timestamps
    end
  end
end
