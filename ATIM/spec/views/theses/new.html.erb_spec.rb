require 'spec_helper'

describe "theses/new" do
  before(:each) do
    assign(:thesis, stub_model(Thesis,
      :title => "MyString",
      :description => "MyString",
      :teacher_id => 1
    ).as_new_record)
  end

  it "renders new thesis form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => theses_path, :method => "post" do
      assert_select "input#thesis_title", :name => "thesis[title]"
      assert_select "input#thesis_description", :name => "thesis[description]"
      assert_select "input#thesis_teacher_id", :name => "thesis[teacher_id]"
    end
  end
end
