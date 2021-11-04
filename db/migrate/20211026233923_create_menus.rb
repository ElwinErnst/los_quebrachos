# frozen_string_literal: true

class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :breakfast
      t.string :launch
      t.string :launchDessert
      t.string :dinner
      t.string :dinnerDessert
      t.datetime :date

      t.timestamps
    end
  end
end
