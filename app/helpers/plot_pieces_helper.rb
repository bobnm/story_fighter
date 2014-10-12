module PlotPiecesHelper
	def self.from_convention(convention)
		plot_pieces = []
		convention.plots.each do |plot|
			plot_piece = PlotPiece.new
			plot_piece.content = plot
			plot_pieces << plot_piece
		end
		return plot_pieces
	end
end
