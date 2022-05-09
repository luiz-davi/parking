require "rails_helper"

RSpec.describe AberturasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aberturas").to route_to("aberturas#index")
    end

    it "routes to #new" do
      expect(get: "/aberturas/new").to route_to("aberturas#new")
    end

    it "routes to #show" do
      expect(get: "/aberturas/1").to route_to("aberturas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aberturas/1/edit").to route_to("aberturas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aberturas").to route_to("aberturas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aberturas/1").to route_to("aberturas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aberturas/1").to route_to("aberturas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aberturas/1").to route_to("aberturas#destroy", id: "1")
    end
  end
end
