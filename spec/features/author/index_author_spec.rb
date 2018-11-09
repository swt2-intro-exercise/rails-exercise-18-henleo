require 'rails_helper'

describe "index authors page" do

  before :context do
    @alan = FactoryBot.create(:author)
    @tim = FactoryBot.create(:author, first_name: 'Tim')
  end

  it "should render without errors" do
    visit authors_path
  end

  it "should contain the names of all users" do
    visit authors_path
    expect(page).to have_text('Alan')
    expect(page).to have_text('Tim')
  end

  it "should contain links to the users detail pages" do
    visit authors_path
    expect(page).to have_link 'Show', href: author_path(@alan)
    expect(page).to have_link 'Show', href: author_path(@tim)
  end

  it "should contain a link to add a new author" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should contain a link to edit each author" do
    visit authors_path
    expect(page).to have_link 'Edit', href: edit_author_path(@alan)
    expect(page).to have_link 'Edit', href: edit_author_path(@tim)
  end

  it "should contain a link to delete each author" do
    visit authors_path
    expect(page).to have_link 'Delete', href: author_path(@alan), method: :delete
    expect(page).to have_link 'Delete', href: author_path(@tim), method: :delete
  end
end