require 'spec_helper'

describe "meeting_notes/show" do
  before(:each) do
    @meeting_note = assign(:meeting_note, stub_model(MeetingNote))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
