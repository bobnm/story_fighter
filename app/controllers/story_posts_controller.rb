class StoryPostsController < ApplicationController
	before_action :set_story_post, only: [:show, :destroy, :update, :edit]

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
		@convention = Convention.new
	end

	def edit
	end

	def copy
		@story_post = StoryPost.new
		@story_post.plots = StoryPost.find(params[:id]).plots
	end

	def update
		if params[:commit] == "いいね！"
			if !ApplicationHelper.can_like(@story_post.convention)
				redirect_to @story_post, notice: 'いいね投稿締め切りを過ぎています。'
				return
			end
			if @story_post.update(story_post_params)
				redirect_to @story_post, notice: 'Your Like added'
			else
				redirect_to @story_post, notice: 'like failed'
			end
		else
			if !ApplicationHelper.can_write(@story_post.convention)
				redirect_to @story_post, notice: 'ストーリー投稿締め切りを過ぎています。'
				return
			end
			if @story_post.update(story_post_params)
				redirect_to @story_post, notice: 'Your Story updated'
			else
				redirect_to @story_post, notice: 'like failed'
			end
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

