require 'rails_helper'

describe "Edit paper page", type: :feature do
  before :each do
    @paper = FactoryBot.create :paper
    visit edit_paper_path(@paper)
  end

  it "should persist year changes made in the form" do
    new_year = @paper.year + 1
    page.fill_in 'paper[year]', with: new_year
    find('input[type="submit"]').click
    expect(@paper.reload.year).to eq(new_year)
  end

  it "should persist venue changes made in the form" do
    new_venue = @paper.venue + '_updated'
    page.fill_in 'paper[venue]', with: new_venue
    find('input[type="submit"]').click
    expect(@paper.reload.venue).to eq(new_venue)
  end
end
