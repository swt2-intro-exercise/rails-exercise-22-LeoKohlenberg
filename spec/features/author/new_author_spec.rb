require 'rails_helper'

describe "New author page", type: :feature do
  it "should exist at 'new_author_path' and render withour error" do
    visit new_author_path
  end

  it "should have text input for an author's first name, last name, and homepage" do
    visit new_author_path
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should save the author after submitting the form" do
    visit new_author_path
    fill_in 'author[first_name]', with: 'Alan'
    fill_in 'author[last_name]', with: 'Turing'
    fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click
    expect { Author.find_by(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing') }.not_to raise_error
  end
end
