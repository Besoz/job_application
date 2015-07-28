require 'spec_helper'

describe "interview_types/edit" do
  before(:each) do
    @interview_type = assign(:interview_type, stub_model(InterviewType,
      :name => "MyString",
      :description => "MyString",
      :duration => 1
    ))
  end

  it "renders the edit interview_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", interview_type_path(@interview_type), "post" do
      assert_select "input#interview_type_name[name=?]", "interview_type[name]"
      assert_select "input#interview_type_description[name=?]", "interview_type[description]"
      assert_select "input#interview_type_duration[name=?]", "interview_type[duration]"
    end
  end
end
