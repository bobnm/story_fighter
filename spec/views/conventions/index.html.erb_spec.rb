require 'spec_helper'

describe "conventions/index" do
  before(:each) do
    assign(:conventions, [
      stub_model(Convention,
        :title => "Title",
        :plots => "MyText"
      ),
      stub_model(Convention,
        :title => "Title",
        :plots => "MyText"
      )
    ])
  end

  it "renders a list of conventions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
