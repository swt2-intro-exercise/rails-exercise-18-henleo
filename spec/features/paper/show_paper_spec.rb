require 'rails_helper'

describe "show paper page", type: :feature do

  before :context do
    @paper = FactoryBot.create :paper
  end

  it "should render without error" do
    visit paper_path(@paper)
  end

  it "should list the papers authors" do
    visit paper_path(@paper)

    @paper.authors.each do |author|
      expect(page).to have_text(author.first_name)
      expect(page).to have_text(author.last_name)
    end
  end
end