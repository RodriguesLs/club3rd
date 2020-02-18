require "application_system_test_case"

class MonthliesTest < ApplicationSystemTestCase
  setup do
    @monthly = monthlies(:one)
  end

  test "visiting the index" do
    visit monthlies_url
    assert_selector "h1", text: "Monthlies"
  end

  test "creating a Monthly" do
    visit monthlies_url
    click_on "New Monthly"

    fill_in "Customer", with: @monthly.customer_id
    fill_in "Date", with: @monthly.date
    fill_in "Price", with: @monthly.price
    fill_in "Status", with: @monthly.status
    click_on "Create Monthly"

    assert_text "Monthly was successfully created"
    click_on "Back"
  end

  test "updating a Monthly" do
    visit monthlies_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @monthly.customer_id
    fill_in "Date", with: @monthly.date
    fill_in "Price", with: @monthly.price
    fill_in "Status", with: @monthly.status
    click_on "Update Monthly"

    assert_text "Monthly was successfully updated"
    click_on "Back"
  end

  test "destroying a Monthly" do
    visit monthlies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monthly was successfully destroyed"
  end
end
