require 'spec_helper'

describe "conventions/new" do
  before(:each) do
    assign(:convention, stub_model(Convention,
      :title => "MyString",
      :plots => "MyText"
    ).as_new_record)
  end

  it "renders new convention form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", conventions_path, "post" do
      assert_select "input#convention_title[name=?]", "convention[title]"
      assert_select "textarea#convention_plots[name=?]", "convention[plots]"
    end
  end
end
