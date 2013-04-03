require 'spec_helper'

describe "commitments/new" do
  before(:each) do
    assign(:commitment, stub_model(Commitment).as_new_record)
  end

  it "renders new commitment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", commitments_path, "post" do
    end
  end
end
