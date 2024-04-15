require "application_system_test_case"

class ConferencesTest < ApplicationSystemTestCase
  setup do
    @conference = conferences(:one)
  end

  test "visiting the index" do
    visit conferences_url
    assert_selector "h1", text: "Conferences"
  end

  test "should create conference" do
    visit conferences_url
    click_on "New conference"

    fill_in "End date", with: @conference.end_date
    fill_in "Location", with: @conference.location
    fill_in "Start date", with: @conference.start_date
    fill_in "Status", with: @conference.status
    fill_in "Title", with: @conference.title
    click_on "Create Conference"

    assert_text "Conference was successfully created"
    click_on "Back"
  end

  test "should update Conference" do
    visit conference_url(@conference)
    click_on "Edit this conference", match: :first

    fill_in "End date", with: @conference.end_date
    fill_in "Location", with: @conference.location
    fill_in "Start date", with: @conference.start_date
    fill_in "Status", with: @conference.status
    fill_in "Title", with: @conference.title
    click_on "Update Conference"

    assert_text "Conference was successfully updated"
    click_on "Back"
  end

  test "should destroy Conference" do
    visit conference_url(@conference)
    click_on "Destroy this conference", match: :first

    assert_text "Conference was successfully destroyed"
  end
end
