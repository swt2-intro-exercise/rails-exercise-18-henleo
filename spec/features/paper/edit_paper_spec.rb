require 'rails_helper'

describe "edit paper page" do

  before :context do
    @paper = FactoryBot.create :paper
  end

  it "should render without errors" do
    visit edit_paper_path(@paper)
  end
end