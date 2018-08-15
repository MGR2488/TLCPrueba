require "application_system_test_case"

class TlcpRuebaListsTest < ApplicationSystemTestCase
  setup do
    @tlcp_rueba_list = tlcp_rueba_lists(:one)
  end

  test "visiting the index" do
    visit tlcp_rueba_lists_url
    assert_selector "h1", text: "Tlcp Rueba Lists"
  end

  test "creating a Tlcp rueba list" do
    visit tlcp_rueba_lists_url
    click_on "New Tlcp Rueba List"

    fill_in "Description", with: @tlcp_rueba_list.description
    fill_in "Title", with: @tlcp_rueba_list.title
    click_on "Create Tlcp rueba list"

    assert_text "Tlcp rueba list was successfully created"
    click_on "Back"
  end

  test "updating a Tlcp rueba list" do
    visit tlcp_rueba_lists_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tlcp_rueba_list.description
    fill_in "Title", with: @tlcp_rueba_list.title
    click_on "Update Tlcp rueba list"

    assert_text "Tlcp rueba list was successfully updated"
    click_on "Back"
  end

  test "destroying a Tlcp rueba list" do
    visit tlcp_rueba_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tlcp rueba list was successfully destroyed"
  end
end
