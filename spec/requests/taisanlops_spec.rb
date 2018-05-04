require 'rails_helper'

RSpec.describe "Taisanlops", type: :request do
  describe "GET /taisanlops" do
    it "works! (now write some real specs)" do
      get taisanlops_path
      expect(response).to have_http_status(200)
    end
  end
end
