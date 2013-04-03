require 'spec_helper'

describe "teachers/new" do
  before(:each) do
    assign(:teacher, stub_model(Teacher,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new teacher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teachers_path, :method => "post" do
      assert_select "input#teacher_name", :name => "teacher[name]"
      assert_select "input#teacher_email", :name => "teacher[email]"
    end
  end
end
