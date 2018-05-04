require "rails_helper"

RSpec.describe PhanconggiangdaysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/phanconggiangdays").to route_to("phanconggiangdays#index")
    end

    it "routes to #new" do
      expect(:get => "/phanconggiangdays/new").to route_to("phanconggiangdays#new")
    end

    it "routes to #show" do
      expect(:get => "/phanconggiangdays/1").to route_to("phanconggiangdays#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/phanconggiangdays/1/edit").to route_to("phanconggiangdays#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/phanconggiangdays").to route_to("phanconggiangdays#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/phanconggiangdays/1").to route_to("phanconggiangdays#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/phanconggiangdays/1").to route_to("phanconggiangdays#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/phanconggiangdays/1").to route_to("phanconggiangdays#destroy", :id => "1")
    end

  end
end
