require 'rails_helper'

describe "Show overview of all authors", type: :feature do
    before :each do
        @paper = FactoryBot.create :paper
        @paper.save

        visit papers_path
    end
    it "should exist" do
    end
    it "should have an edit link" do
        click_link('Edit')
    end
    it "should have an delete link" do
        click_link('Delete')
        expect(Paper.count).to eq(0)
    end
end