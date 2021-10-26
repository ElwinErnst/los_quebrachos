require "application_system_test_case"

class CabinsTest < ApplicationSystemTestCase
  setup do
    @cabin = cabins(:one)
  end

  test "visiting the index" do
    visit cabins_url
    assert_selector "h1", text: "Cabins"
  end

  test "creating a Cabin" do
    visit cabins_url
    click_on "New Cabin"

    fill_in "Name", with: @cabin.name
    fill_in "Price", with: @cabin.price
    click_on "Create Cabin"

    assert_text "Cabin was successfully created"
    click_on "Back"
  end

  test "updating a Cabin" do
    visit cabins_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cabin.name
    fill_in "Price", with: @cabin.price
    click_on "Update Cabin"

    assert_text "Cabin was successfully updated"
    click_on "Back"
  end

  test "destroying a Cabin" do
    visit cabins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cabin was successfully destroyed"
  end
end
