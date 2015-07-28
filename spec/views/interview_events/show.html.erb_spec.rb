require 'spec_helper'

describe "interview_events/show" do
  before(:each) do
    @interview_event = assign(:interview_event, stub_model(InterviewEvent,
      :score => 1,
      :application_id => 2,
      :interview_type_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
