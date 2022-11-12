require 'rails_helper'

describe "Show overview of all authors", type: :feature do
    before :each do
        @alan = FactoryBot.create :author
        @alan.save

        visit author_index_path
    end
    it "should exist" do
    end
    it "should display all Author names and homepages " do
        expect(page).to have_text("Name")
        expect(page).to have_text("Homepage")
        expect(page).to have_text("Alan Turing")
        expect(page).to have_text("http://wikipedia.de/Alan_Turing")
    end
    it "should display links to all author pages and the create page" do
        expect(page).to have_link , href:author_path(@alan)
        expect(page).to have_link 'New', href: new_author_path
    end
end