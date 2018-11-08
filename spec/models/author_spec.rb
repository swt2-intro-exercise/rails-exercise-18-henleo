require 'rails_helper'

RSpec.describe Author, type: :model do

  author = Author.new(:first_name => 'Alan', :last_name => 'Turing', :homepage => 'alan-turing.co.uk')

  it "should have these attributes" do
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('alan-turing.co.uk')
  end

  it "should have a name method" do
    expect(author.name).to eq('Alan Turing')
  end
end
