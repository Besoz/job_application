require 'spec_helper'

describe "interview_events/new" do
  before(:each) do
    assign(:interview_event, stub_model(InterviewEvent,
      :score => 1,
      :application_id => 1,
      :interview_type_id => 1
    ).as_new_record)
  end

  it "renders new interview_event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", interview_events_path, "post" do
      assert_select "input#interview_event_score[name=?]", "interview_event[score]"
      assert_select "input#interview_event_application_id[name=?]", "interview_event[application_id]"
      assert_select "input#interview_event_interview_type_id[name=?]", "interview_event[interview_type_id]"
    end
  end
end
