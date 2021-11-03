# frozen_string_literal: true

require 'application_system_test_case'

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test 'visiting the index' do
    visit reservations_url
    assert_selector 'h1', text: 'Reservations'
  end

  test 'creating a Reservation' do
    visit reservations_url
    click_on 'New Reservation'

    fill_in 'Camping', with: @reservation.camping_id
    fill_in 'End date', with: @reservation.end_date
    check 'Pool' if @reservation.pool
    check 'Sport center' if @reservation.sport_center
    fill_in 'Start date', with: @reservation.start_date
    fill_in 'State', with: @reservation.state_id
    fill_in 'User', with: @reservation.user_id
    click_on 'Create Reservation'

    assert_text 'Reservation was successfully created'
    click_on 'Back'
  end

  test 'updating a Reservation' do
    visit reservations_url
    click_on 'Edit', match: :first

    fill_in 'Camping', with: @reservation.camping_id
    fill_in 'End date', with: @reservation.end_date
    check 'Pool' if @reservation.pool
    check 'Sport center' if @reservation.sport_center
    fill_in 'Start date', with: @reservation.start_date
    fill_in 'State', with: @reservation.state_id
    fill_in 'User', with: @reservation.user_id
    click_on 'Update Reservation'

    assert_text 'Reservation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Reservation' do
    visit reservations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Reservation was successfully destroyed'
  end
end
