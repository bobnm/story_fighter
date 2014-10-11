class PlotPiecesController < ApplicationController
  before_action :set_plot_piece, only: [:show, :edit, :update, :destroy]

  # GET /plot_pieces
  # GET /plot_pieces.json
  def index
    @plot_pieces = PlotPiece.all
  end

  # GET /plot_pieces/1
  # GET /plot_pieces/1.json
  def show
  end

  # GET /plot_pieces/new
  def new
    @plot_piece = PlotPiece.new
  end

  # GET /plot_pieces/1/edit
  def edit
  end

  # POST /plot_pieces
  # POST /plot_pieces.json
  def create
    @plot_piece = PlotPiece.new(plot_piece_params)

    respond_to do |format|
      if @plot_piece.save
        format.html { redirect_to @plot_piece, notice: 'Plot piece was successfully created.' }
        format.json { render action: 'show', status: :created, location: @plot_piece }
      else
        format.html { render action: 'new' }
        format.json { render json: @plot_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plot_pieces/1
  # PATCH/PUT /plot_pieces/1.json
  def update
    respond_to do |format|
      if @plot_piece.update(plot_piece_params)
        format.html { redirect_to @plot_piece, notice: 'Plot piece was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @plot_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plot_pieces/1
  # DELETE /plot_pieces/1.json
  def destroy
    @plot_piece.destroy
    respond_to do |format|
      format.html { redirect_to plot_pieces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plot_piece
      @plot_piece = PlotPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plot_piece_params
      params.require(:plot_piece).permit(:content)
    end
end
