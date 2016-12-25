require "rails_helper"

RSpec.describe MonumentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/monuments").to route_to("monuments#index")
    end

    it "routes to #new" do
      expect(:get => "/monuments/new").to route_to("monuments#new")
    end

    it "routes to #show" do
      expect(:get => "/monuments/1").to route_to("monuments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/monuments/1/edit").to route_to("monuments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/monuments").to route_to("monuments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/monuments/1").to route_to("monuments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/monuments/1").to route_to("monuments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/monuments/1").to route_to("monuments#destroy", :id => "1")
    end

  end
end
