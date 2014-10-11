require 'spec_helper'

describe "plot_pieces/index" do
  before(:each) do
    assign(:plot_pieces, [
      stub_model(PlotPiece,
        :content => "Content"
      ),
      stub_model(PlotPiece,
        :content => "Content"
      )
    ])
  end

  it "renders a list of plot_pieces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
