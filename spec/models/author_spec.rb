require 'rails_helper'

describe "Author model", type: :model do
    it "should have firstname, lastname,homepage and return the name correctly" do
        author = Author.new(:first_name => "Alan", :last_name => "Turing", :homepage => "http://wikipedia.org/Alan_Turing")
        expect(author.first_name).to eq("Alan")
        expect(author.last_name).to eq("Turing")
        expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
        expect(author.name).to eq("Alan Turing")
    end
    it "should not validate without last name" do
        @author = Author.new(:first_name => "Alan", :last_name => nil, :homepage => "http://example.com")
        expect(@author).to_not be_valid
    end
    it "should have an empty list of authors" do
        author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "https://example.com")
        expect(author.papers).to be_empty
      end
end