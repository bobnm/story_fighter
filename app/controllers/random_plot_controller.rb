class RandomPlotController < ApplicationController
	def index
		redirect_to "/random_plot/#{Random.rand(10000000).to_s}"
	end

	def show
		@story_post = StoryPost.new
		@story_post.plots = PlotPiece.find(
			PlotPiece.pluck(:id).shuffle(random: Random.new(params[:id].to_i))[0..4]).map{|x| x.content }
		@convention = Convention.new
	end
end

