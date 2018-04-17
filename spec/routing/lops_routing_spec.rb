require "rails_helper"

RSpec.describe LopsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lops").to route_to("lops#index")
    end

    it "routes to #new" do
      expect(:get => "/lops/new").to route_to("lops#new")
    end

    it "routes to #show" do
      expect(:get => "/lops/1").to route_to("lops#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lops/1/edit").to route_to("lops#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lops").to route_to("lops#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lops/1").to route_to("lops#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lops/1").to route_to("lops#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lops/1").to route_to("lops#destroy", :id => "1")
    end

  end
end
