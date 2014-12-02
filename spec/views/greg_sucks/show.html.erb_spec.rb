require 'rails_helper'

RSpec.describe "greg_sucks/show", :type => :view do
  before(:each) do
    @greg_suck = assign(:greg_suck, GregSuck.create!(
      :sucks => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
  end
end
