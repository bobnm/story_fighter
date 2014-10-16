require 'spec_helper'

describe "information/edit" do
  before(:each) do
    @information = assign(:information, stub_model(Information,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", information_path(@information), "post" do
      assert_select "input#information_title[name=?]", "information[title]"
      assert_select "textarea#information_content[name=?]", "information[content]"
    end
  end
end
