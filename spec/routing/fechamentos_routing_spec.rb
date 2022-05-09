require "rails_helper"

RSpec.describe FechamentosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/fechamentos").to route_to("fechamentos#index")
    end

    it "routes to #new" do
      expect(get: "/fechamentos/new").to route_to("fechamentos#new")
    end

    it "routes to #show" do
      expect(get: "/fechamentos/1").to route_to("fechamentos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/fechamentos/1/edit").to route_to("fechamentos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/fechamentos").to route_to("fechamentos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/fechamentos/1").to route_to("fechamentos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/fechamentos/1").to route_to("fechamentos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/fechamentos/1").to route_to("fechamentos#destroy", id: "1")
    end
  end
end
