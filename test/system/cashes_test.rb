require "application_system_test_case"

class CashesTest < ApplicationSystemTestCase
  setup do
    @cash = cashes(:one)
  end

  test "visiting the index" do
    visit cashes_url
    assert_selector "h1", text: "Cashes"
  end

  test "creating a Cash" do
    visit cashes_url
    click_on "New Cash"

    fill_in "Date", with: @cash.date
    fill_in "Note", with: @cash.note
    check "Type" if @cash.type
    fill_in "Value", with: @cash.value
    click_on "Create Cash"

    assert_text "Cash was successfully created"
    click_on "Back"
  end

  test "updating a Cash" do
    visit cashes_url
    click_on "Edit", match: :first

    fill_in "Date", with: @cash.date
    fill_in "Note", with: @cash.note
    check "Type" if @cash.type
    fill_in "Value", with: @cash.value
    click_on "Update Cash"

    assert_text "Cash was successfully updated"
    click_on "Back"
  end

  test "destroying a Cash" do
    visit cashes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cash was successfully destroyed"
  end
end
