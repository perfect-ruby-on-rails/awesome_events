require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  test "/events/:id ページを表示" do
    event = FactoryBot.create(:event)
    visit event_url(event)
    assert_selector "h1", text: event.name
  end

  test "/events/new ページを表示" do
    sign_in_as(FactoryBot.create(:user))

    visit new_event_url #((2))
    assert_selector "h1", text: "イベント作成"
  end
end
