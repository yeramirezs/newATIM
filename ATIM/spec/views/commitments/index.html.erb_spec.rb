require 'spec_helper'

describe "commitments/index" do
  before(:each) do
    assign(:commitments, [
      stub_model(Commitment),
      stub_model(Commitment)
    ])
  end

  it "renders a list of commitments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
