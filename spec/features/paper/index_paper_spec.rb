require 'rails_helper'

describe "index paper page" do

  before :context do
    @paper = FactoryBot.create(:paper)
  end

  it "should render without errors" do
    visit papers_path
  end

  it "should contain the titles of all papers" do
    visit papers_path
    expect(page).to have_text('COMPUTING MACHINERY AND INTELLIGENCE')
  end

  it "should contain links to each papers detail page" do
    visit papers_path
    expect(page).to have_link 'Show', href: paper_path(@paper)
  end

  it "should contain a link to add a new paper" do
    visit papers_path
    expect(page).to have_link 'New', href: new_paper_path
  end

  it "should contain a link to edit each paper" do
    visit papers_path
    expect(page).to have_link 'Edit', href: edit_paper_path(@paper)
  end

  it "should contain a link to delete each paper" do
    visit papers_path
    url = paper_path(@paper)
    expect(page).to have_css("a[data-method='delete'][href='#{url}']")
  end
end