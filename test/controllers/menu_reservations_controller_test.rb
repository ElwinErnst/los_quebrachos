require "test_helper"

class MenuReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menu_reservation = menu_reservations(:one)
  end

  test "should get index" do
    get menu_reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_menu_reservation_url
    assert_response :success
  end

  test "should create menu_reservation" do
    assert_difference('MenuReservation.count') do
      post menu_reservations_url, params: { menu_reservation: { date: @menu_reservation.date, menu_id: @menu_reservation.menu_id, reservation_id: @menu_reservation.reservation_id } }
    end

    assert_redirected_to menu_reservation_url(MenuReservation.last)
  end

  test "should show menu_reservation" do
    get menu_reservation_url(@menu_reservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_menu_reservation_url(@menu_reservation)
    assert_response :success
  end

  test "should update menu_reservation" do
    patch menu_reservation_url(@menu_reservation), params: { menu_reservation: { date: @menu_reservation.date, menu_id: @menu_reservation.menu_id, reservation_id: @menu_reservation.reservation_id } }
    assert_redirected_to menu_reservation_url(@menu_reservation)
  end

  test "should destroy menu_reservation" do
    assert_difference('MenuReservation.count', -1) do
      delete menu_reservation_url(@menu_reservation)
    end

    assert_redirected_to menu_reservations_url
  end
end
