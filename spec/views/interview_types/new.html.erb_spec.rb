require 'spec_helper'

describe "interview_types/new" do
  before(:each) do
    assign(:interview_type, stub_model(InterviewType,
      :name => "MyString",
      :description => "MyString",
      :duration => 1
    ).as_new_record)
  end

  it "renders new interview_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", interview_types_path, "post" do
      assert_select "input#interview_type_name[name=?]", "interview_type[name]"
      assert_select "input#interview_type_description[name=?]", "interview_type[description]"
      assert_select "input#interview_type_duration[name=?]", "interview_type[duration]"
    end
  end
end
