class RandomPlotController < ApplicationController
  # GET /plot_pieces
  # GET /plot_pieces.json
  def index
	@plot_pieces = PlotPiece.find(PlotPiece.pluck(:id).shuffle[0..4])
  end
end
