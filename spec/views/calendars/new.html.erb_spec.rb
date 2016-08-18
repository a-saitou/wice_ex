require 'spec_helper'

describe "calendars/new" do
  before(:each) do
    assign(:calendar, stub_model(Calendar,
      :year => 1,
      :month => 1,
      :day => 1,
      :holiday => false
    ).as_new_record)
  end

  it "renders new calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", calendars_path, "post" do
      assert_select "input#calendar_year[name=?]", "calendar[year]"
      assert_select "input#calendar_month[name=?]", "calendar[month]"
      assert_select "input#calendar_day[name=?]", "calendar[day]"
      assert_select "input#calendar_holiday[name=?]", "calendar[holiday]"
    end
  end
end
