require 'rails_helper'

RSpec.describe "Khoanphiphaithus", type: :request do
  describe "GET /khoanphiphaithus" do
    it "works! (now write some real specs)" do
      get khoanphiphaithus_path
      expect(response).to have_http_status(200)
    end
  end
end
