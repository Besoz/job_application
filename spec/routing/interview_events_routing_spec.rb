require "spec_helper"

describe InterviewEventsController do
  describe "routing" do

    it "routes to #index" do
      get("/interview_events").should route_to("interview_events#index")
    end

    it "routes to #new" do
      get("/interview_events/new").should route_to("interview_events#new")
    end

    it "routes to #show" do
      get("/interview_events/1").should route_to("interview_events#show", :id => "1")
    end

    it "routes to #edit" do
      get("/interview_events/1/edit").should route_to("interview_events#edit", :id => "1")
    end

    it "routes to #create" do
      post("/interview_events").should route_to("interview_events#create")
    end

    it "routes to #update" do
      put("/interview_events/1").should route_to("interview_events#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/interview_events/1").should route_to("interview_events#destroy", :id => "1")
    end

  end
end
