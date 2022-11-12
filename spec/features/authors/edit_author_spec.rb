require 'rails_helper'

describe "Edit author page", type: :feature do
    before :each do
        @alan = FactoryBot.create :author
        @alan.save
    end
    
    it "should exist at 'edit_author_path' and render without error" do
    visit edit_author_path(@alan)
    end
    
    it "should have text input for changing an authors firstname, lastname and homepage" do
        visit edit_author_path(@alan)
        expect(page).to have_field('author[first_name]')
        expect(page).to have_field('author[last_name]')
        expect(page).to have_field('author[homepage]')
    end
    
    it "should save the changes made to the author" do
        visit edit_author_path(@alan)
        page.fill_in 'author[first_name]', with: 'Alan Mathison'
        page.fill_in 'author[last_name]', with: 'Turing'
        page.fill_in 'author[homepage]', with: "http://wikipedia.org/Alan_Turing"
        find('input[type="submit"]').click
        expect(@alan.first_name).to eq("Alan")
        @alan.reload
        expect(@alan.first_name).to eq("Alan Mathison")
    end
end
