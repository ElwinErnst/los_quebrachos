class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :pool
      t.boolean :sport_center
      t.boolean :soccerField
      t.boolean :BeachVolleyball
      t.integer :people
      t.references :state, null: false, foreign_key: true
      t.references :camping, null: false, foreign_key: true

      t.timestamps
    end
  end
end
