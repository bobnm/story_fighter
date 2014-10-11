class CreatePlotPieces < ActiveRecord::Migration
  def change
    create_table :plot_pieces do |t|
      t.string :content

      t.timestamps
    end
  end
end
