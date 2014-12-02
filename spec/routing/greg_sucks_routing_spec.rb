require "rails_helper"

RSpec.describe GregSucksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/greg_sucks").to route_to("greg_sucks#index")
    end

    it "routes to #new" do
      expect(:get => "/greg_sucks/new").to route_to("greg_sucks#new")
    end

    it "routes to #show" do
      expect(:get => "/greg_sucks/1").to route_to("greg_sucks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/greg_sucks/1/edit").to route_to("greg_sucks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/greg_sucks").to route_to("greg_sucks#create")
    end

    it "routes to #update" do
      expect(:put => "/greg_sucks/1").to route_to("greg_sucks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/greg_sucks/1").to route_to("greg_sucks#destroy", :id => "1")
    end

  end
end
