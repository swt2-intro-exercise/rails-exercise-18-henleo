require 'rails_helper'

RSpec.describe Author, type: :model do

  before :context do
    @alan = FactoryBot.build(:author)
  end

  it "should have these attributes" do
    expect(@alan.first_name).to eq('Alan')
    expect(@alan.last_name).to eq('Turing')
    expect(@alan.homepage).to eq('alan-turing.co.uk')
  end

  it "should have a name method" do
    expect(@alan.name).to eq('Alan Turing')
  end

  it "should have a last name" do
    @peter = FactoryBot.build(:author, last_name: '')
    expect(@peter).to_not be_valid
  end
end
