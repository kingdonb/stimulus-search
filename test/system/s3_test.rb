require "application_system_test_case"

class SearchesTest < ApplicationSystemTestCase
  test "search from s3" do
    person = people(:john_doe)

    visit root_path

    fill_in placeholder: "Search people by name", with: person.name

    within ".search__results" do
      click_link person.name
    end

    assert_selector "p", text: person.name
    skip "doesn't do s3"
  end

  test "search from authenticated s3" do
    skip "doesn't do s3"
  end
end
