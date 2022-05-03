require "rails_helper"

RSpec.describe SangriaController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/sangria").to route_to("sangria#index")
    end

    it "routes to #new" do
      expect(get: "/sangria/new").to route_to("sangria#new")
    end

    it "routes to #show" do
      expect(get: "/sangria/1").to route_to("sangria#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/sangria/1/edit").to route_to("sangria#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/sangria").to route_to("sangria#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/sangria/1").to route_to("sangria#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/sangria/1").to route_to("sangria#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/sangria/1").to route_to("sangria#destroy", id: "1")
    end
  end
end
