require 'rails_helper'

RSpec.describe "greg_sucks/edit", :type => :view do
  before(:each) do
    @greg_suck = assign(:greg_suck, GregSuck.create!(
      :sucks => false
    ))
  end

  it "renders the edit greg_suck form" do
    render

    assert_select "form[action=?][method=?]", greg_suck_path(@greg_suck), "post" do

      assert_select "input#greg_suck_sucks[name=?]", "greg_suck[sucks]"
    end
  end
end
