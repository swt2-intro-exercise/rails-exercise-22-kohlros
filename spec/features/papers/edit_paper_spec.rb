require 'rails_helper'

describe "Edit paper page", type: :feature do
    before :each do
        @paper = FactoryBot.create :paper
        @paper.save
    end    
    it "should exist at 'edit_paper_path' and render without error" do
    visit edit_paper_path(@paper)
    end
end
