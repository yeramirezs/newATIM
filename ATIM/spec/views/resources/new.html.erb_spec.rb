require 'spec_helper'

describe "resources/new" do
  before(:each) do
    assign(:resource, stub_model(Resource,
      :title => "MyString",
      :file => "MyString",
      :section_id => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new resource form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", resources_path, "post" do
      assert_select "input#resource_title[name=?]", "resource[title]"
      assert_select "input#resource_file[name=?]", "resource[file]"
      assert_select "input#resource_section_id[name=?]", "resource[section_id]"
      assert_select "textarea#resource_description[name=?]", "resource[description]"
    end
  end
end
