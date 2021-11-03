# frozen_string_literal: true

class CreateBathroomReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :bathroom_reservations do |t|
      t.references :reservation, null: false, foreign_key: true
      t.references :bathroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
