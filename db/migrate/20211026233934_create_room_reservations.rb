# frozen_string_literal: true

class CreateRoomReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :room_reservations do |t|
      t.references :reservation, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
