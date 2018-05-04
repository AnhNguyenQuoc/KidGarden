require "rails_helper"

RSpec.describe KhoanphiphaithusController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/khoanphiphaithus").to route_to("khoanphiphaithus#index")
    end

    it "routes to #new" do
      expect(:get => "/khoanphiphaithus/new").to route_to("khoanphiphaithus#new")
    end

    it "routes to #show" do
      expect(:get => "/khoanphiphaithus/1").to route_to("khoanphiphaithus#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/khoanphiphaithus/1/edit").to route_to("khoanphiphaithus#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/khoanphiphaithus").to route_to("khoanphiphaithus#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/khoanphiphaithus/1").to route_to("khoanphiphaithus#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/khoanphiphaithus/1").to route_to("khoanphiphaithus#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/khoanphiphaithus/1").to route_to("khoanphiphaithus#destroy", :id => "1")
    end

  end
end
