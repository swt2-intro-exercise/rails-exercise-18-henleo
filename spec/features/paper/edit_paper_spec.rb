require 'rails_helper'

describe "edit paper page" do

  before :context do
    @paper = FactoryBot.create :paper
  end

  it "should render without errors" do
    visit edit_paper_path(@paper)
  end

  it "should not cause an error to cick the submit button" do
    visit edit_paper_path(@paper)
    find('input[type="submit"]').click
  end

  it "should update the record" do
    visit edit_paper_path(@paper)

    expect(@paper.title).not_to eq('blub')

    page.fill_in 'paper[title]', with: 'blub'
    find('input[type="submit"]').click

    @paper.reload
    expect(@paper.title).to eq('blub')
  end
end