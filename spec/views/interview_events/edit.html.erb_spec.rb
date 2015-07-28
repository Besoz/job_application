require 'spec_helper'

describe "interview_events/edit" do
  before(:each) do
    @interview_event = assign(:interview_event, stub_model(InterviewEvent,
      :score => 1,
      :application_id => 1,
      :interview_type_id => 1
    ))
  end

  it "renders the edit interview_event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", interview_event_path(@interview_event), "post" do
      assert_select "input#interview_event_score[name=?]", "interview_event[score]"
      assert_select "input#interview_event_application_id[name=?]", "interview_event[application_id]"
      assert_select "input#interview_event_interview_type_id[name=?]", "interview_event[interview_type_id]"
    end
  end
end
