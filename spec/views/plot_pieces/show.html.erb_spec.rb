require 'spec_helper'

describe "plot_pieces/show" do
  before(:each) do
    @plot_piece = assign(:plot_piece, stub_model(PlotPiece,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
