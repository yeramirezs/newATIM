require 'spec_helper'

describe "deliverables/show" do
  before(:each) do
    @deliverable = assign(:deliverable, stub_model(Deliverable,
      :title => "Title",
      :thesis_id => 1,
      :description => "Description",
      :file_name => "File Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/Description/)
    rendered.should match(/File Name/)
  end
end
