# frozen_string_literal: true

class CreateMenuReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_reservations do |t|
      t.references :reservation, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
