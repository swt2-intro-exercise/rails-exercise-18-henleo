require 'rails_helper'

describe "edit author page" do

  before :context do
    @alan = FactoryBot.create :author
  end

  it "should render without errors" do
    visit edit_author_path(@alan)
  end
end