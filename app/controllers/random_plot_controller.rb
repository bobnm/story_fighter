class RandomPlotController < ApplicationController
  def index
	@plot_pieces = PlotPiece.find(PlotPiece.pluck(:id).shuffle[0..4])
  end
end
