require 'spec_helper'

describe "works/new" do
  before(:each) do
    assign(:work, stub_model(Work,
      :calendar_id => 1,
      :staff_id => "MyString",
      : => 1,
      :agreement_id => 1,
      :work_time => 1,
      :over_work_time => 1,
      :late_night_over_time => 1,
      :paid_holiday => 1,
      :agency_holiday => 1
    ).as_new_record)
  end

  it "renders new work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", works_path, "post" do
      assert_select "input#work_calendar_id[name=?]", "work[calendar_id]"
      assert_select "input#work_staff_id[name=?]", "work[staff_id]"
      assert_select "input#work_[name=?]", "work[]"
      assert_select "input#work_agreement_id[name=?]", "work[agreement_id]"
      assert_select "input#work_work_time[name=?]", "work[work_time]"
      assert_select "input#work_over_work_time[name=?]", "work[over_work_time]"
      assert_select "input#work_late_night_over_time[name=?]", "work[late_night_over_time]"
      assert_select "input#work_paid_holiday[name=?]", "work[paid_holiday]"
      assert_select "input#work_agency_holiday[name=?]", "work[agency_holiday]"
    end
  end
end
