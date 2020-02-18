require "application_system_test_case"

class CostumersTest < ApplicationSystemTestCase
  setup do
    @costumer = costumers(:one)
  end

  test "visiting the index" do
    visit costumers_url
    assert_selector "h1", text: "Costumers"
  end

  test "creating a Costumer" do
    visit costumers_url
    click_on "New Costumer"

    fill_in "Cpf", with: @costumer.cpf
    fill_in "Date of birth", with: @costumer.date_of_birth
    fill_in "Mobile phone", with: @costumer.mobile_phone
    fill_in "Name", with: @costumer.name
    fill_in "Phone", with: @costumer.phone
    fill_in "Rg", with: @costumer.rg
    check "Status" if @costumer.status
    click_on "Create Costumer"

    assert_text "Costumer was successfully created"
    click_on "Back"
  end

  test "updating a Costumer" do
    visit costumers_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @costumer.cpf
    fill_in "Date of birth", with: @costumer.date_of_birth
    fill_in "Mobile phone", with: @costumer.mobile_phone
    fill_in "Name", with: @costumer.name
    fill_in "Phone", with: @costumer.phone
    fill_in "Rg", with: @costumer.rg
    check "Status" if @costumer.status
    click_on "Update Costumer"

    assert_text "Costumer was successfully updated"
    click_on "Back"
  end

  test "destroying a Costumer" do
    visit costumers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Costumer was successfully destroyed"
  end
end
