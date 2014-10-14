class ConventionsController < ApplicationController
  before_action :set_convention, only: [:show, :edit, :update, :destroy, :entry]

  # GET /conventions
  # GET /conventions.json
  def index
    @conventions = Convention.all
  end

  # GET /conventions/1
  # GET /conventions/1.json
  def show
  end

  # GET /conventions/new
  def new
    @convention = Convention.new
  end

  # GET /conventions/1/edit
  def edit
  end

  # POST /conventions
  # POST /conventions.json
  def create
    @convention = Convention.new(convention_params)

    respond_to do |format|
      if @convention.save
        format.html { redirect_to @convention, notice: 'Convention was successfully created.' }
        format.json { render action: 'show', status: :created, location: @convention }
      else
        format.html { render action: 'new' }
        format.json { render json: @convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conventions/1
  # PATCH/PUT /conventions/1.json
  def update
	  respond_to do |format|
		  if @convention.update(convention_params)
			  format.html { redirect_to @convention, notice: 'Convention was successfully updated.' }
			  format.json { head :no_content }
		  else
			  format.html { render action: 'edit' }
			  format.json { render json: @convention.errors, status: :unprocessable_entity }
		  end
	  end
  end

  # DELETE /conventions/1
  # DELETE /conventions/1.json
  def destroy
    @convention.destroy
    respond_to do |format|
      format.html { redirect_to conventions_url }
      format.json { head :no_content }
    end
  end

  def entry
	@story_post = StoryPost.new
	@story_post.plots = @convention.plots
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convention
      @convention = Convention.find(params[:id])
	  @convention.plots.reject!{|x| x == ""}
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convention_params
      params.require(:convention).permit(:title, :description, :write_limit, :like_limit, plots: [])
    end
end
