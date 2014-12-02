require 'rails_helper'

RSpec.describe "greg_sucks/index", :type => :view do
  before(:each) do
    assign(:greg_sucks, [
      GregSuck.create!(
        :sucks => false
      ),
      GregSuck.create!(
        :sucks => false
      )
    ])
  end

  it "renders a list of greg_sucks" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
