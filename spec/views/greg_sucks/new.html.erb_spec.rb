require 'rails_helper'

RSpec.describe "greg_sucks/new", :type => :view do
  before(:each) do
    assign(:greg_suck, GregSuck.new(
      :sucks => false
    ))
  end

  it "renders new greg_suck form" do
    render

    assert_select "form[action=?][method=?]", greg_sucks_path, "post" do

      assert_select "input#greg_suck_sucks[name=?]", "greg_suck[sucks]"
    end
  end
end
