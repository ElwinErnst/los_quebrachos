# frozen_string_literal: true

require 'application_system_test_case'

class BathroomReservationsTest < ApplicationSystemTestCase
  setup do
    @bathroom_reservation = bathroom_reservations(:one)
  end

  test 'visiting the index' do
    visit bathroom_reservations_url
    assert_selector 'h1', text: 'Bathroom Reservations'
  end

  test 'creating a Bathroom reservation' do
    visit bathroom_reservations_url
    click_on 'New Bathroom Reservation'

    fill_in 'Bathroom', with: @bathroom_reservation.bathroom_id
    fill_in 'Reservation', with: @bathroom_reservation.reservation_id
    click_on 'Create Bathroom reservation'

    assert_text 'Bathroom reservation was successfully created'
    click_on 'Back'
  end

  test 'updating a Bathroom reservation' do
    visit bathroom_reservations_url
    click_on 'Edit', match: :first

    fill_in 'Bathroom', with: @bathroom_reservation.bathroom_id
    fill_in 'Reservation', with: @bathroom_reservation.reservation_id
    click_on 'Update Bathroom reservation'

    assert_text 'Bathroom reservation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Bathroom reservation' do
    visit bathroom_reservations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Bathroom reservation was successfully destroyed'
  end
end
