require "application_system_test_case"

class TuitsTest < ApplicationSystemTestCase
  setup do
    @tuit = tuits(:one)
  end

  test "visiting the index" do
    visit tuits_url
    assert_selector "h1", text: "Tuits"
  end

  test "creating a Tuit" do
    visit tuits_url
    click_on "New Tuit"

    fill_in "Tuit", with: @tuit.tuit
    click_on "Create Tuit"

    assert_text "Tuit was successfully created"
    click_on "Back"
  end

  test "updating a Tuit" do
    visit tuits_url
    click_on "Edit", match: :first

    fill_in "Tuit", with: @tuit.tuit
    click_on "Update Tuit"

    assert_text "Tuit was successfully updated"
    click_on "Back"
  end

  test "destroying a Tuit" do
    visit tuits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tuit was successfully destroyed"
  end
end
