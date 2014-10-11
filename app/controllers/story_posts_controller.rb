class StoryPostsController < ApplicationController
	before_action :set_story_post, only: [:show, :destroy]

	def index
		@story_posts = StoryPost.all
	end

	def create
		@story_post = StoryPost.new(story_post_params)
		if @story_post.save
			redirect_to @story_post, notice: 'Story was successfully posted.'
		else
			render "static_pages/home"
		end
	end

	def destroy
	end

	def show
	end

private
	def set_story_post
		@story_post = StoryPost.find(params[:id])
	end

	def story_post_params
		params.require(:story_post).permit(:title, :name, content: [], plots: [])
	end
end

