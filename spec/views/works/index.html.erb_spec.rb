require 'spec_helper'

describe "works/index" do
  before(:each) do
    assign(:works, [
      stub_model(Work,
        :calendar_id => 1,
        :staff_id => "Staff",
        : => 2,
        :agreement_id => 3,
        :work_time => 4,
        :over_work_time => 5,
        :late_night_over_time => 6,
        :paid_holiday => 7,
        :agency_holiday => 8
      ),
      stub_model(Work,
        :calendar_id => 1,
        :staff_id => "Staff",
        : => 2,
        :agreement_id => 3,
        :work_time => 4,
        :over_work_time => 5,
        :late_night_over_time => 6,
        :paid_holiday => 7,
        :agency_holiday => 8
      )
    ])
  end

  it "renders a list of works" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Staff".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
  end
end
