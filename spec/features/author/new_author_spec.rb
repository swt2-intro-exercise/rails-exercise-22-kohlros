require 'rails_helper'

describe "New author page", type: :feature do
  it "should exist at 'new_author_path' and render without error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_author_path
  end
  it "should have text input for an authors firstname, lastname and homepage" do
    visit new_author_path
    expect(page).to have_field('author[firstname]')
    expect(page).to have_field('author[lastname]')
    expect(page).to have_field('author[homepage]')
  end
end
