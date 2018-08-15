require "application_system_test_case"

class TrabajadoresListsTest < ApplicationSystemTestCase
  setup do
    @trabajadores_list = trabajadores_lists(:one)
  end

  test "visiting the index" do
    visit trabajadores_lists_url
    assert_selector "h1", text: "Trabajadores Lists"
  end

  test "creating a Trabajadores list" do
    visit trabajadores_lists_url
    click_on "New Trabajadores List"

    fill_in "Apellidos", with: @trabajadores_list.Apellidos
    fill_in "Nombres", with: @trabajadores_list.Nombres
    click_on "Create Trabajadores list"

    assert_text "Trabajadores list was successfully created"
    click_on "Back"
  end

  test "updating a Trabajadores list" do
    visit trabajadores_lists_url
    click_on "Edit", match: :first

    fill_in "Apellidos", with: @trabajadores_list.Apellidos
    fill_in "Nombres", with: @trabajadores_list.Nombres
    click_on "Update Trabajadores list"

    assert_text "Trabajadores list was successfully updated"
    click_on "Back"
  end

  test "destroying a Trabajadores list" do
    visit trabajadores_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trabajadores list was successfully destroyed"
  end
end
