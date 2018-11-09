require 'rails_helper'

RSpec.describe Paper, type: :model do
  before :context do
    @paper = FactoryBot.build(:paper)
  end

  it "should have these attributes" do
    expect(@paper.title).to eq('COMPUTING MACHINERY AND INTELLIGENCE')
    expect(@paper.venue).to eq('Mind 49: 433-460')
    expect(@paper.year).to eq(1950)
  end

  it "should be valid" do
    expect(@paper).to be_valid
  end
end
