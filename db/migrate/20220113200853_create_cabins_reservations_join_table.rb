class CreateCabinsReservationsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :cabins, :reservations do |t|
      # t.index [:cabin_id, :reservation_id]
      # t.index [:reservation_id, :cabin_id]
    end
  end
end
