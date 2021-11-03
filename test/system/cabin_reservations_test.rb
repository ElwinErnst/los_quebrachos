# frozen_string_literal: true

require 'application_system_test_case'

class CabinReservationsTest < ApplicationSystemTestCase
  setup do
    @cabin_reservation = cabin_reservations(:one)
  end

  test 'visiting the index' do
    visit cabin_reservations_url
    assert_selector 'h1', text: 'Cabin Reservations'
  end

  test 'creating a Cabin reservation' do
    visit cabin_reservations_url
    click_on 'New Cabin Reservation'

    fill_in 'Cabin', with: @cabin_reservation.cabin_id
    fill_in 'Date', with: @cabin_reservation.date
    fill_in 'Reservation', with: @cabin_reservation.reservation_id
    click_on 'Create Cabin reservation'

    assert_text 'Cabin reservation was successfully created'
    click_on 'Back'
  end

  test 'updating a Cabin reservation' do
    visit cabin_reservations_url
    click_on 'Edit', match: :first

    fill_in 'Cabin', with: @cabin_reservation.cabin_id
    fill_in 'Date', with: @cabin_reservation.date
    fill_in 'Reservation', with: @cabin_reservation.reservation_id
    click_on 'Update Cabin reservation'

    assert_text 'Cabin reservation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Cabin reservation' do
    visit cabin_reservations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Cabin reservation was successfully destroyed'
  end
end
