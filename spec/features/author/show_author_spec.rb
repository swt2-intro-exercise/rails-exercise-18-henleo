require 'rails_helper'

describe "show author page" do

  before :context do
    @alan = FactoryBot.create :author
  end

  it "should render without error" do
    visit author_path(@alan)
  end

  it "should have text" do
    visit author_path(@alan)

    expect(page).to have_text('Alan')
    expect(page).to have_text('Turing')
    expect(page).to have_text('alan-turing.co.uk')
  end

end