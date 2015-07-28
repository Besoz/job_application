require 'spec_helper'

describe "interview_types/show" do
  before(:each) do
    @interview_type = assign(:interview_type, stub_model(InterviewType,
      :name => "Name",
      :description => "Description",
      :duration => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
