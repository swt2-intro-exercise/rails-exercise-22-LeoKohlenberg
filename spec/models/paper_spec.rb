require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have title, venue, year" do
    paper = Paper.new(title: '', venue: '', year: '2000')
    expect(paper.title).to eq('')
    expect(paper.venue).to eq('')
    expect(paper.year).to eq(2000)
  end
end
