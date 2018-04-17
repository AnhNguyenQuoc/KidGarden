require "rails_helper"

RSpec.describe NhansusController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/nhansus").to route_to("nhansus#index")
    end

    it "routes to #new" do
      expect(:get => "/nhansus/new").to route_to("nhansus#new")
    end

    it "routes to #show" do
      expect(:get => "/nhansus/1").to route_to("nhansus#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/nhansus/1/edit").to route_to("nhansus#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/nhansus").to route_to("nhansus#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/nhansus/1").to route_to("nhansus#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/nhansus/1").to route_to("nhansus#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nhansus/1").to route_to("nhansus#destroy", :id => "1")
    end

  end
end
