class CreateBathroomsReservationsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :bathrooms, :reservations do |t|
      # t.index [:bathroom_id, :reservation_id]
      # t.index [:reservation_id, :bathroom_id]
    end
  end
end
