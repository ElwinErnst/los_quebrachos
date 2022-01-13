class CreateMenusReservationsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :menus, :reservations do |t|
      # t.index [:menu_id, :reservation_id]
      # t.index [:reservation_id, :menu_id]
    end
  end
end
