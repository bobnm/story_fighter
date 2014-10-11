require 'spec_helper'

describe "conventions/edit" do
  before(:each) do
    @convention = assign(:convention, stub_model(Convention,
      :title => "MyString",
      :plots => "MyText"
    ))
  end

  it "renders the edit convention form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", convention_path(@convention), "post" do
      assert_select "input#convention_title[name=?]", "convention[title]"
      assert_select "textarea#convention_plots[name=?]", "convention[plots]"
    end
  end
end
