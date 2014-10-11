class RandomPlotController < ApplicationController
	def index
		#@plot_pieces = PlotPiece.find(PlotPiece.pluck(:id).shuffle()[0..4])
		redirect_to "/random_plot/#{Random.rand(10000000).to_s}"
	end

	def show
		@story_post = StoryPost.new
		@plot_pieces = PlotPiece.find(PlotPiece.pluck(:id).shuffle(random: Random.new(params[:id].to_i))[0..4])
	end
end
