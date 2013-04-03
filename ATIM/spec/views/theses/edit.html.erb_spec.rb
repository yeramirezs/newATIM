require 'spec_helper'

describe "theses/edit" do
  before(:each) do
    @thesis = assign(:thesis, stub_model(Thesis,
      :title => "MyString",
      :description => "MyString",
      :teacher_id => 1
    ))
  end

  it "renders the edit thesis form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => theses_path(@thesis), :method => "post" do
      assert_select "input#thesis_title", :name => "thesis[title]"
      assert_select "input#thesis_description", :name => "thesis[description]"
      assert_select "input#thesis_teacher_id", :name => "thesis[teacher_id]"
    end
  end
end
