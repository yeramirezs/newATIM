require 'spec_helper'

describe "meeting_notes/index" do
  before(:each) do
    assign(:meeting_notes, [
      stub_model(MeetingNote),
      stub_model(MeetingNote)
    ])
  end

  it "renders a list of meeting_notes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
