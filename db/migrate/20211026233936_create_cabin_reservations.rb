# frozen_string_literal: true

class CreateCabinReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :cabin_reservations do |t|
      t.references :reservation, null: false, foreign_key: true
      t.references :cabin, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
