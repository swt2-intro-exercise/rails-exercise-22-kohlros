require 'rails_helper'

describe "New author page", type: :feature do
  it "should exist at 'new_paper_path' and render without error" do
    visit new_paper_path
  end
  it "should have text input for a papers title and venue and number input for the year" do
    visit new_author_path
    expect(page).to have_field('paper[title]')
    expect(page).to have_field('paper[venue]')
    expect(page).to have_field('paper[year]')
  end
#   it "should save the created author" do
#     visit new_author_path
#     page.fill_in 'author[first_name]', with: 'Alan'
#     page.fill_in 'author[last_name]', with: 'Turing'
#     page.fill_in 'author[homepage]', with: "http://wikipedia.org/Alan_Turing"
#     find('input[type="submit"]').click
#   end
end
