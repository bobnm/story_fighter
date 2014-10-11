json.array!(@plot_pieces) do |plot_piece|
  json.extract! plot_piece, :content
  json.url plot_piece_url(plot_piece, format: :json)
end