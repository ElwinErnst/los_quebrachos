# frozen_string_literal: true

require 'application_system_test_case'

class MenuReservationsTest < ApplicationSystemTestCase
  setup do
    @menu_reservation = menu_reservations(:one)
  end

  test 'visiting the index' do
    visit menu_reservations_url
    assert_selector 'h1', text: 'Menu Reservations'
  end

  test 'creating a Menu reservation' do
    visit menu_reservations_url
    click_on 'New Menu Reservation'

    fill_in 'Date', with: @menu_reservation.date
    fill_in 'Menu', with: @menu_reservation.menu_id
    fill_in 'Reservation', with: @menu_reservation.reservation_id
    click_on 'Create Menu reservation'

    assert_text 'Menu reservation was successfully created'
    click_on 'Back'
  end

  test 'updating a Menu reservation' do
    visit menu_reservations_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @menu_reservation.date
    fill_in 'Menu', with: @menu_reservation.menu_id
    fill_in 'Reservation', with: @menu_reservation.reservation_id
    click_on 'Update Menu reservation'

    assert_text 'Menu reservation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Menu reservation' do
    visit menu_reservations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Menu reservation was successfully destroyed'
  end
end
