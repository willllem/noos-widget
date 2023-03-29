require "application_system_test_case"

class WearablesTest < ApplicationSystemTestCase
  setup do
    @wearable = wearables(:one)
  end

  test "visiting the index" do
    visit wearables_url
    assert_selector "h1", text: "Wearables"
  end

  test "should create wearable" do
    visit wearables_url
    click_on "New wearable"

    fill_in "Image url", with: @wearable.image_url
    fill_in "Name", with: @wearable.name
    click_on "Create Wearable"

    assert_text "Wearable was successfully created"
    click_on "Back"
  end

  test "should update Wearable" do
    visit wearable_url(@wearable)
    click_on "Edit this wearable", match: :first

    fill_in "Image url", with: @wearable.image_url
    fill_in "Name", with: @wearable.name
    click_on "Update Wearable"

    assert_text "Wearable was successfully updated"
    click_on "Back"
  end

  test "should destroy Wearable" do
    visit wearable_url(@wearable)
    click_on "Destroy this wearable", match: :first

    assert_text "Wearable was successfully destroyed"
  end
end
