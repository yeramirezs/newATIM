require 'spec_helper'

describe "deliverables/index" do
  before(:each) do
    assign(:deliverables, [
      stub_model(Deliverable,
        :title => "Title",
        :thesis_id => 1,
        :description => "Description",
        :file_name => "File Name"
      ),
      stub_model(Deliverable,
        :title => "Title",
        :thesis_id => 1,
        :description => "Description",
        :file_name => "File Name"
      )
    ])
  end

  it "renders a list of deliverables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
  end
end
