require 'spec_helper'

describe "plot_pieces/edit" do
  before(:each) do
    @plot_piece = assign(:plot_piece, stub_model(PlotPiece,
      :content => "MyString"
    ))
  end

  it "renders the edit plot_piece form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plot_piece_path(@plot_piece), "post" do
      assert_select "input#plot_piece_content[name=?]", "plot_piece[content]"
    end
  end
end
