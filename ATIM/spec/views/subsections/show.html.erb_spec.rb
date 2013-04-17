require 'spec_helper'

describe "subsections/show" do
  before(:each) do
    @subsection = assign(:subsection, stub_model(Subsection,
      :name => "Name",
      :description => "Description",
      :thesis_id => 1,
      :section_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
