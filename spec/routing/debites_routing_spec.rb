require "rails_helper"

RSpec.describe DebitesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/debites").to route_to("debites#index")
    end

    it "routes to #new" do
      expect(get: "/debites/new").to route_to("debites#new")
    end

    it "routes to #show" do
      expect(get: "/debites/1").to route_to("debites#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/debites/1/edit").to route_to("debites#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/debites").to route_to("debites#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/debites/1").to route_to("debites#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/debites/1").to route_to("debites#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/debites/1").to route_to("debites#destroy", id: "1")
    end
  end
end
