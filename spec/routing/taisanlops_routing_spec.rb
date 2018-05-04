require "rails_helper"

RSpec.describe TaisanlopsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/taisanlops").to route_to("taisanlops#index")
    end

    it "routes to #new" do
      expect(:get => "/taisanlops/new").to route_to("taisanlops#new")
    end

    it "routes to #show" do
      expect(:get => "/taisanlops/1").to route_to("taisanlops#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/taisanlops/1/edit").to route_to("taisanlops#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/taisanlops").to route_to("taisanlops#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/taisanlops/1").to route_to("taisanlops#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/taisanlops/1").to route_to("taisanlops#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/taisanlops/1").to route_to("taisanlops#destroy", :id => "1")
    end

  end
end
