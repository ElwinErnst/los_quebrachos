# frozen_string_literal: true

require 'test_helper'

class BathroomReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bathroom_reservation = bathroom_reservations(:one)
  end

  test 'should get index' do
    get bathroom_reservations_url
    assert_response :success
  end

  test 'should get new' do
    get new_bathroom_reservation_url
    assert_response :success
  end

  test 'should create bathroom_reservation' do
    assert_difference('BathroomReservation.count') do
      post bathroom_reservations_url,
           params: { bathroom_reservation: { bathroom_id: @bathroom_reservation.bathroom_id,
                                             reservation_id: @bathroom_reservation.reservation_id } }
    end

    assert_redirected_to bathroom_reservation_url(BathroomReservation.last)
  end

  test 'should show bathroom_reservation' do
    get bathroom_reservation_url(@bathroom_reservation)
    assert_response :success
  end

  test 'should get edit' do
    get edit_bathroom_reservation_url(@bathroom_reservation)
    assert_response :success
  end

  test 'should update bathroom_reservation' do
    patch bathroom_reservation_url(@bathroom_reservation),
          params: { bathroom_reservation: { bathroom_id: @bathroom_reservation.bathroom_id,
                                            reservation_id: @bathroom_reservation.reservation_id } }
    assert_redirected_to bathroom_reservation_url(@bathroom_reservation)
  end

  test 'should destroy bathroom_reservation' do
    assert_difference('BathroomReservation.count', -1) do
      delete bathroom_reservation_url(@bathroom_reservation)
    end

    assert_redirected_to bathroom_reservations_url
  end
end
