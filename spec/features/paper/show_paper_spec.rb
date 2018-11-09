require 'rails_helper'

describe "show paper page", type: :feature do

  before :context do
    @paper = FactoryBot.create :paper
  end

  it "should render without error" do
    visit paper_path(@paper)
  end
end