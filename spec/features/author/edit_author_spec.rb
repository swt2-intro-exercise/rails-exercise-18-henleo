require 'rails_helper'

describe "edit author page" do

  before :context do
    @alan = FactoryBot.create :author
  end

  it "should render without errors" do
    visit edit_author_path(@alan)
  end

  it "should not cause an error to cick the submit button" do
    visit edit_author_path(@alan)
    find('input[type="submit"]').click
  end

  it "should update the record" do
    visit edit_author_path(@alan)

    expect(@alan.first_name).not_to eq('Edsger')

    page.fill_in 'author[first_name]', with: 'Edsger'
    find('input[type="submit"]').click

    @alan.reload
    expect(@alan.first_name).to eq('Edsger')
  end
end