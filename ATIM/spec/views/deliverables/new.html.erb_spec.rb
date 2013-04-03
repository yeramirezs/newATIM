require 'spec_helper'

describe "deliverables/new" do
  before(:each) do
    assign(:deliverable, stub_model(Deliverable,
      :title => "MyString",
      :thesis_id => 1,
      :description => "MyString",
      :file_name => "MyString"
    ).as_new_record)
  end

  it "renders new deliverable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", deliverables_path, "post" do
      assert_select "input#deliverable_title[name=?]", "deliverable[title]"
      assert_select "input#deliverable_thesis_id[name=?]", "deliverable[thesis_id]"
      assert_select "input#deliverable_description[name=?]", "deliverable[description]"
      assert_select "input#deliverable_file_name[name=?]", "deliverable[file_name]"
    end
  end
end
