require "spec_helper"

describe LaunchersController do
  describe "routing" do

    it "routes to #index" do
      get("/launchers").should route_to("launchers#index")
    end

    it "routes to #new" do
      get("/launchers/new").should route_to("launchers#new")
    end

    it "routes to #show" do
      get("/launchers/1").should route_to("launchers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/launchers/1/edit").should route_to("launchers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/launchers").should route_to("launchers#create")
    end

    it "routes to #update" do
      put("/launchers/1").should route_to("launchers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/launchers/1").should route_to("launchers#destroy", :id => "1")
    end

  end
end
