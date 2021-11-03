# frozen_string_literal: true

require 'application_system_test_case'

class RoomReservationsTest < ApplicationSystemTestCase
  setup do
    @room_reservation = room_reservations(:one)
  end

  test 'visiting the index' do
    visit room_reservations_url
    assert_selector 'h1', text: 'Room Reservations'
  end

  test 'creating a Room reservation' do
    visit room_reservations_url
    click_on 'New Room Reservation'

    fill_in 'Date', with: @room_reservation.date
    fill_in 'Reservation', with: @room_reservation.reservation_id
    fill_in 'Room', with: @room_reservation.room_id
    click_on 'Create Room reservation'

    assert_text 'Room reservation was successfully created'
    click_on 'Back'
  end

  test 'updating a Room reservation' do
    visit room_reservations_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @room_reservation.date
    fill_in 'Reservation', with: @room_reservation.reservation_id
    fill_in 'Room', with: @room_reservation.room_id
    click_on 'Update Room reservation'

    assert_text 'Room reservation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Room reservation' do
    visit room_reservations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Room reservation was successfully destroyed'
  end
end
