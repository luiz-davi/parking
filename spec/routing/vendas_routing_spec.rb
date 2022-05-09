require "rails_helper"

RSpec.describe VendasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/vendas").to route_to("vendas#index")
    end

    it "routes to #new" do
      expect(get: "/vendas/new").to route_to("vendas#new")
    end

    it "routes to #show" do
      expect(get: "/vendas/1").to route_to("vendas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/vendas/1/edit").to route_to("vendas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/vendas").to route_to("vendas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/vendas/1").to route_to("vendas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/vendas/1").to route_to("vendas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/vendas/1").to route_to("vendas#destroy", id: "1")
    end
  end
end
