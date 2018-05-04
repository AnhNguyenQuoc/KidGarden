require 'rails_helper'

RSpec.describe "Phanconggiangdays", type: :request do
  describe "GET /phanconggiangdays" do
    it "works! (now write some real specs)" do
      get phanconggiangdays_path
      expect(response).to have_http_status(200)
    end
  end
end
