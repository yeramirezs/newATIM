require 'spec_helper'

describe "deliverables/edit" do
  before(:each) do
    @deliverable = assign(:deliverable, stub_model(Deliverable,
      :title => "MyString",
      :thesis_id => 1,
      :description => "MyString",
      :file_name => "MyString"
    ))
  end

  it "renders the edit deliverable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", deliverable_path(@deliverable), "post" do
      assert_select "input#deliverable_title[name=?]", "deliverable[title]"
      assert_select "input#deliverable_thesis_id[name=?]", "deliverable[thesis_id]"
      assert_select "input#deliverable_description[name=?]", "deliverable[description]"
      assert_select "input#deliverable_file_name[name=?]", "deliverable[file_name]"
    end
  end
end
