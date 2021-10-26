require "test_helper"

class CabinReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cabin_reservation = cabin_reservations(:one)
  end

  test "should get index" do
    get cabin_reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_cabin_reservation_url
    assert_response :success
  end

  test "should create cabin_reservation" do
    assert_difference('CabinReservation.count') do
      post cabin_reservations_url, params: { cabin_reservation: { cabin_id: @cabin_reservation.cabin_id, date: @cabin_reservation.date, reservation_id: @cabin_reservation.reservation_id } }
    end

    assert_redirected_to cabin_reservation_url(CabinReservation.last)
  end

  test "should show cabin_reservation" do
    get cabin_reservation_url(@cabin_reservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_cabin_reservation_url(@cabin_reservation)
    assert_response :success
  end

  test "should update cabin_reservation" do
    patch cabin_reservation_url(@cabin_reservation), params: { cabin_reservation: { cabin_id: @cabin_reservation.cabin_id, date: @cabin_reservation.date, reservation_id: @cabin_reservation.reservation_id } }
    assert_redirected_to cabin_reservation_url(@cabin_reservation)
  end

  test "should destroy cabin_reservation" do
    assert_difference('CabinReservation.count', -1) do
      delete cabin_reservation_url(@cabin_reservation)
    end

    assert_redirected_to cabin_reservations_url
  end
end
