require "spec_helper"

describe OrderersController do
  describe "routing" do

    it "routes to #index" do
      get("/orderers").should route_to("orderers#index")
    end

    it "routes to #new" do
      get("/orderers/new").should route_to("orderers#new")
    end

    it "routes to #show" do
      get("/orderers/1").should route_to("orderers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/orderers/1/edit").should route_to("orderers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/orderers").should route_to("orderers#create")
    end

    it "routes to #update" do
      put("/orderers/1").should route_to("orderers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/orderers/1").should route_to("orderers#destroy", :id => "1")
    end

  end
end
