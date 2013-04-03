require "spec_helper"

describe CommitmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/commitments").should route_to("commitments#index")
    end

    it "routes to #new" do
      get("/commitments/new").should route_to("commitments#new")
    end

    it "routes to #show" do
      get("/commitments/1").should route_to("commitments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/commitments/1/edit").should route_to("commitments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/commitments").should route_to("commitments#create")
    end

    it "routes to #update" do
      put("/commitments/1").should route_to("commitments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/commitments/1").should route_to("commitments#destroy", :id => "1")
    end

  end
end
