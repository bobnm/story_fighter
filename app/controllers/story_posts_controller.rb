class StoryPostsController < ApplicationController
	before_action :set_story_post, only: [:show, :destroy, :update]

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

	def update
		if @story_post.convention.like_limit < DateTime.now
			redirect_to @story_post, notice: 'いいね投稿締め切りを過ぎています。'
			return
		end
		if @story_post.update(story_post_params)
			redirect_to @story_post, notice: 'Your Like added'
		else
			redirect_to @story_post, notice: 'failed'
		end
	end

private
	def set_story_post
		@story_post = StoryPost.find(params[:id])
	end

	def story_post_params
		params.require(:story_post).permit(:title, :name, :like, content: [], plots: [])
	end
end

