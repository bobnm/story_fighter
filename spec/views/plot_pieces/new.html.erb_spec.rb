require 'spec_helper'

describe "plot_pieces/new" do
  before(:each) do
    assign(:plot_piece, stub_model(PlotPiece,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new plot_piece form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plot_pieces_path, "post" do
      assert_select "input#plot_piece_content[name=?]", "plot_piece[content]"
    end
  end
end
