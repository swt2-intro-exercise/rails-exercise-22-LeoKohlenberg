require 'rails_helper'

describe "Author show page", type: :feature do
    it "should exist at 'authors_path' and render withour error" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
    end

    it "should show an authors information" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)

        expect(page).to have_text(@alan.name)
        expect(page).to have_text(@alan.homepage)
    end
end