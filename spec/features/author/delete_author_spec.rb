require 'rails_helper'

describe "delete author", type: :feature do
    it "should delete an author" do
        visit new_author_path
        fill_in 'author[first_name]', with: 'Alan'
        fill_in 'author[last_name]', with: 'Turing'
        fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
        find('input[type="submit"]').click

        old_author_count = Author.count
        visit authors_path
        click_link 'Delete'
        expect(Author.count).to eq(old_author_count - 1)
    end
end