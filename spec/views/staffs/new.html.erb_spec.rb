require 'spec_helper'

describe "staffs/new" do
  before(:each) do
    assign(:staff, stub_model(Staff,
      :name => "MyString",
      :office => "MyString",
      :order => 1,
      :wage => "9.99"
    ).as_new_record)
  end

  it "renders new staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", staffs_path, "post" do
      assert_select "input#staff_name[name=?]", "staff[name]"
      assert_select "input#staff_office[name=?]", "staff[office]"
      assert_select "input#staff_order[name=?]", "staff[order]"
      assert_select "input#staff_wage[name=?]", "staff[wage]"
    end
  end
end
