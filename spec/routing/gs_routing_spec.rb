require "rails_helper"

RSpec.describe GsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gs").to route_to("gs#index")
    end

    it "routes to #new" do
      expect(:get => "/gs/new").to route_to("gs#new")
    end

    it "routes to #show" do
      expect(:get => "/gs/1").to route_to("gs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gs/1/edit").to route_to("gs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gs").to route_to("gs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gs/1").to route_to("gs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gs/1").to route_to("gs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gs/1").to route_to("gs#destroy", :id => "1")
    end

  end
end
