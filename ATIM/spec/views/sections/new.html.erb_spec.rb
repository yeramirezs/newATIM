require 'spec_helper'

describe "sections/new" do
  before(:each) do
    assign(:section, stub_model(Section,
      :name => "MyString",
      :theses_id => 1
    ).as_new_record)
  end

  it "renders new section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sections_path, "post" do
      assert_select "input#section_name[name=?]", "section[name]"
      assert_select "input#section_theses_id[name=?]", "section[theses_id]"
    end
  end
end
