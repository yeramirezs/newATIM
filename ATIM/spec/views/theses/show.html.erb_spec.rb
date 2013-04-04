require 'spec_helper'

describe "theses/show" do
  before(:each) do
    @thesis = assign(:thesis, stub_model(Thesis,
      :title => "Title",
      :description => "Description",
      :teacher_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
