require "spec_helper"

describe PlotPiecesController do
  describe "routing" do

    it "routes to #index" do
      get("/plot_pieces").should route_to("plot_pieces#index")
    end

    it "routes to #new" do
      get("/plot_pieces/new").should route_to("plot_pieces#new")
    end

    it "routes to #show" do
      get("/plot_pieces/1").should route_to("plot_pieces#show", :id => "1")
    end

    it "routes to #edit" do
      get("/plot_pieces/1/edit").should route_to("plot_pieces#edit", :id => "1")
    end

    it "routes to #create" do
      post("/plot_pieces").should route_to("plot_pieces#create")
    end

    it "routes to #update" do
      put("/plot_pieces/1").should route_to("plot_pieces#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/plot_pieces/1").should route_to("plot_pieces#destroy", :id => "1")
    end

  end
end
