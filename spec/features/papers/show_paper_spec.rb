require 'rails_helper'

describe "Show paper page", type: :feature do
    it "should exist for every paper at paper_path(@name)" do
        @paper = FactoryBot.create :paper
        @paper.save
        visit paper_path(@paper)
        expect(page).to have_text("Alan Turing")
    end
end