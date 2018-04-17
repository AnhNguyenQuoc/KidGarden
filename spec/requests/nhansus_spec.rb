require 'rails_helper'

RSpec.describe "Nhansus", type: :request do
  describe "GET /nhansus" do
    it "works! (now write some real specs)" do
      get nhansus_path
      expect(response).to have_http_status(200)
    end
  end
end
