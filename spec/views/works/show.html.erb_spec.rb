require 'spec_helper'

describe "works/show" do
  before(:each) do
    @work = assign(:work, stub_model(Work,
      :calendar_id => 1,
      :staff_id => "Staff",
      : => 2,
      :agreement_id => 3,
      :work_time => 4,
      :over_work_time => 5,
      :late_night_over_time => 6,
      :paid_holiday => 7,
      :agency_holiday => 8
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Staff/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
  end
end
