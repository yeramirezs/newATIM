require 'spec_helper'

describe "meeting_notes/edit" do
  before(:each) do
    @meeting_note = assign(:meeting_note, stub_model(MeetingNote))
  end

  it "renders the edit meeting_note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", meeting_note_path(@meeting_note), "post" do
    end
  end
end
