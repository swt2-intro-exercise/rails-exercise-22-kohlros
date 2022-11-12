require 'rails_helper'

describe "Show author page", type: :feature do
    it "should exist for every author at author_path(@name)" do
        @alan = FactoryBot.create :author
        @alan.save
        visit author_path(@alan)
        expect(page).to have_text("Alan Turing")
        expect(page).to have_text("http://wikipedia.de/Alan_Turing")
    end
end