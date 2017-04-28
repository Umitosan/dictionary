require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe("the dictionary home path", {:type => :feature}) do

  it("displays the list of words in the user's dictionary") do
    visit("/")
    fill_in('word_input1', :with => 'albatross')
    click_button("Add word")
    expect(page).to have_content("albatross")
  end

end
