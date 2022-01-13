class CreateRoomsReservationsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :rooms, :reservations do |t|
      # t.index [:room_id, :reservation_id]
      # t.index [:reservation_id, :room_id]
    end
  end
end
