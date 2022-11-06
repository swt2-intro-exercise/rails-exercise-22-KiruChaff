require 'rails_helper'

RSpec.describe Paper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "a paper must include a title, venue and an integer year" do 
    paper1 = Paper.new({:title => "title", :venue => "venue", :year => 2022})
    paper2 = Paper.new({                   :venue => "venue", :year => 2022})
    paper3 = Paper.new({:title => "title",                    :year => 2022})
    paper4 = Paper.new({:title => "title", :venue => "venue"               })
    paper5 = Paper.new({:title => "title", :venue => "venue",  :year => "foo"})

    expect(paper1).to be_valid
    expect(paper2).to_not be_valid
    expect(paper3).to_not be_valid
    expect(paper4).to_not be_valid
    expect(paper5).to_not be_valid
  end

  it "Papers and authors should have a HABTM relation" do
    paper = Paper.new({:title => "title", :venue => "venue", :year => 2022})
    
    expect(paper.authors).to be_empty
  end
end
