require "spec_helper"

describe BookSignupsController do
  describe "routing" do

    it "routes to #index" do
      get("/book_signups").should route_to("book_signups#index")
    end

    it "routes to #new" do
      get("/book_signups/new").should route_to("book_signups#new")
    end

    it "routes to #show" do
      get("/book_signups/1").should route_to("book_signups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/book_signups/1/edit").should route_to("book_signups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/book_signups").should route_to("book_signups#create")
    end

    it "routes to #update" do
      put("/book_signups/1").should route_to("book_signups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/book_signups/1").should route_to("book_signups#destroy", :id => "1")
    end

  end
end
