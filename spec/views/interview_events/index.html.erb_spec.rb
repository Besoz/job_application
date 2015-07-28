require 'spec_helper'

describe "interview_events/index" do
  before(:each) do
    assign(:interview_events, [
      stub_model(InterviewEvent,
        :score => 1,
        :application_id => 2,
        :interview_type_id => 3
      ),
      stub_model(InterviewEvent,
        :score => 1,
        :application_id => 2,
        :interview_type_id => 3
      )
    ])
  end

  it "renders a list of interview_events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
