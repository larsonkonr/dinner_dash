require 'rails_helper'

RSpec.describe "GregSucks", :type => :request do
  describe "GET /greg_sucks" do
    it "works! (now write some real specs)" do
      get greg_sucks_path
      expect(response).to have_http_status(200)
    end
  end
end
