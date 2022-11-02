require 'rails_helper'

describe "Index author page", type: :feature do
  it "there should exist an index page" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit authors_path
  end

  it "an author should have its respective show linked" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers

    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  
  end


end
