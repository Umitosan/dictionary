require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe("the dictionary home path", {:type => :feature}) do

  it("displays the word just added to the dictionary") do
    visit("/")
    fill_in('word_input', :with => 'albatross')
    click_button("Add word")
    expect(page).to have_content("albatross")
  end

  it("displays all words in the dictionary") do
    visit("/")
    fill_in('word_input', :with => 'albatross')
    click_button("Add word")
    fill_in('word_input', :with => 'coconut')
    click_button("Add word")
    expect(page).to have_content("albatross")
    expect(page).to have_content("coconut")
  end

end

describe("the dictionary word path", {:type => :feature}) do

  it("displays the word on a separate page") do
    visit("/")
    fill_in('word_input', :with => 'coconut')
    click_button("Add word")
    click_link("coconut")
    expect(page).to have_content("coconut")
  end

end
