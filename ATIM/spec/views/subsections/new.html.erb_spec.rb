require 'spec_helper'

describe "subsections/new" do
  before(:each) do
    assign(:subsection, stub_model(Subsection,
      :name => "MyString",
      :description => "MyString",
      :thesis_id => 1,
      :section_id => 1
    ).as_new_record)
  end

  it "renders new subsection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subsections_path, "post" do
      assert_select "input#subsection_name[name=?]", "subsection[name]"
      assert_select "input#subsection_description[name=?]", "subsection[description]"
      assert_select "input#subsection_thesis_id[name=?]", "subsection[thesis_id]"
      assert_select "input#subsection_section_id[name=?]", "subsection[section_id]"
    end
  end
end
