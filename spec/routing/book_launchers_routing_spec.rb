require "spec_helper"

describe BookLaunchersController do
  describe "routing" do

    it "routes to #index" do
      get("/book_launchers").should route_to("book_launchers#index")
    end

    it "routes to #new" do
      get("/book_launchers/new").should route_to("book_launchers#new")
    end

    it "routes to #show" do
      get("/book_launchers/1").should route_to("book_launchers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/book_launchers/1/edit").should route_to("book_launchers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/book_launchers").should route_to("book_launchers#create")
    end

    it "routes to #update" do
      put("/book_launchers/1").should route_to("book_launchers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/book_launchers/1").should route_to("book_launchers#destroy", :id => "1")
    end

  end
end
