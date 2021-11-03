# frozen_string_literal: true

require 'application_system_test_case'

class BathroomsTest < ApplicationSystemTestCase
  setup do
    @bathroom = bathrooms(:one)
  end

  test 'visiting the index' do
    visit bathrooms_url
    assert_selector 'h1', text: 'Bathrooms'
  end

  test 'creating a Bathroom' do
    visit bathrooms_url
    click_on 'New Bathroom'

    check 'Gender' if @bathroom.gender
    fill_in 'Shower', with: @bathroom.shower
    fill_in 'Ubication', with: @bathroom.ubication
    click_on 'Create Bathroom'

    assert_text 'Bathroom was successfully created'
    click_on 'Back'
  end

  test 'updating a Bathroom' do
    visit bathrooms_url
    click_on 'Edit', match: :first

    check 'Gender' if @bathroom.gender
    fill_in 'Shower', with: @bathroom.shower
    fill_in 'Ubication', with: @bathroom.ubication
    click_on 'Update Bathroom'

    assert_text 'Bathroom was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Bathroom' do
    visit bathrooms_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Bathroom was successfully destroyed'
  end
end
