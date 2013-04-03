require 'spec_helper'

describe "teachers/edit" do
  before(:each) do
    @teacher = assign(:teacher, stub_model(Teacher,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit teacher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teachers_path(@teacher), :method => "post" do
      assert_select "input#teacher_name", :name => "teacher[name]"
      assert_select "input#teacher_email", :name => "teacher[email]"
    end
  end
end
