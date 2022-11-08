require 'rails_helper'

RSpec.describe "papers/index", type: :view do
  before(:each) do
    assign(:papers, [
      Paper.create!(
        title: "Title",
        venue: "Venue",
        year: 2
      ),
      Paper.create!(
        title: "Title",
        venue: "Venue",
        year: 2
      )
    ])
  end

  it "renders a list of papers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Venue".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end

  it "queries by year" do
    paper = FactoryBot.create :paper
    visit edit_paper_path(paper)
    new_venue = paper.venue + '_updated'
    page.fill_in 'paper[venue]', with: new_venue
    find('input[type="submit"]').click
    expect(paper.reload.venue).to eq(new_venue)


    # paper = FactoryBot.create :paper
    # vist edit_paper_path(paper)
    # year_zero = '0'
    # page.fill_in 'paper[year]', with: year_zero
    # find('input[type="submit"]').click
    # expect(Paper.year(year_zero).include? paper).to eq(true)

  end
end
