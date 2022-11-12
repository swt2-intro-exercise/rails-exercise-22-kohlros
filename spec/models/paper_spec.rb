require 'rails_helper'

describe "Paper model", type: :model do
    it "should have title, venue and year" do
        paper = Paper.new(:title => "Turing test", :venue => "Berlin", :year => 1950)
        expect(paper.title).to eq("Turing test")
        expect(paper.venue).to eq("Berlin")
        expect(paper.year).to eq(1950)
    end
end