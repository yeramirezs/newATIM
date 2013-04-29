require 'spec_helper'

describe "resources/edit" do
  before(:each) do
    @resource = assign(:resource, stub_model(Resource,
      :title => "MyString",
      :file => "MyString",
      :section_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit resource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", resource_path(@resource), "post" do
      assert_select "input#resource_title[name=?]", "resource[title]"
      assert_select "input#resource_file[name=?]", "resource[file]"
      assert_select "input#resource_section_id[name=?]", "resource[section_id]"
      assert_select "textarea#resource_description[name=?]", "resource[description]"
    end
  end
end
