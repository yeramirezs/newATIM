require 'spec_helper'

describe "commitments/show" do
  before(:each) do
    @commitment = assign(:commitment, stub_model(Commitment))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
