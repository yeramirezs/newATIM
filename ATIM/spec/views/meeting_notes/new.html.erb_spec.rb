require 'spec_helper'

describe "meeting_notes/new" do
  before(:each) do
    assign(:meeting_note, stub_model(MeetingNote).as_new_record)
  end

  it "renders new meeting_note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", meeting_notes_path, "post" do
    end
  end
end
