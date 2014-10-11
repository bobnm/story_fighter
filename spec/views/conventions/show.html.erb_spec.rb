require 'spec_helper'

describe "conventions/show" do
  before(:each) do
    @convention = assign(:convention, stub_model(Convention,
      :title => "Title",
      :plots => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
