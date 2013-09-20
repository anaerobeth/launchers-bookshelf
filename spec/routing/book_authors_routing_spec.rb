require "spec_helper"

describe BookAuthorsController do
  describe "routing" do

    it "routes to #index" do
      get("/book_authors").should route_to("book_authors#index")
    end

    it "routes to #new" do
      get("/book_authors/new").should route_to("book_authors#new")
    end

    it "routes to #show" do
      get("/book_authors/1").should route_to("book_authors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/book_authors/1/edit").should route_to("book_authors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/book_authors").should route_to("book_authors#create")
    end

    it "routes to #update" do
      put("/book_authors/1").should route_to("book_authors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/book_authors/1").should route_to("book_authors#destroy", :id => "1")
    end

  end
end
