require "spec_helper"

describe InterviewTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/interview_types").should route_to("interview_types#index")
    end

    it "routes to #new" do
      get("/interview_types/new").should route_to("interview_types#new")
    end

    it "routes to #show" do
      get("/interview_types/1").should route_to("interview_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/interview_types/1/edit").should route_to("interview_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/interview_types").should route_to("interview_types#create")
    end

    it "routes to #update" do
      put("/interview_types/1").should route_to("interview_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/interview_types/1").should route_to("interview_types#destroy", :id => "1")
    end

  end
end
