require 'rails_helper'

describe "Paper model", type: :model do
    it "should have title, venue and year" do
        paper = Paper.new(:title => "Turing test", :venue => "Berlin", :year => 1950)
        expect(paper.title).to eq("Turing test")
        expect(paper.venue).to eq("Berlin")
        expect(paper.year).to eq(1950)
    end
    it "should not validate without title" do
        @paper = Paper.new(:title => nil, :venue => "Berlin", :year => 1990)
        expect(@paper).to_not be_valid
    end
    it "should not validate without venue" do
        @paper = Paper.new(:title => "Turing test", :venue => nil, :year => 1990)
        expect(@paper).to_not be_valid
    end
    it "should not validate without year" do
        @paper = Paper.new(:title => "Turing test", :venue => "Berlin", :year => "zweitausend")
        expect(@paper).to_not be_valid
        @paper2 = Paper.new(:title => "Turing test", :venue => "Berlin", :year => 1950)
        expect(@paper2).to be_valid
    end
    it "should have an empty list of authors" do
        paper = Paper.new(title: "Turing", venue: "Berlin", year: 2023)
        expect(paper.authors).to be_empty
      end
end