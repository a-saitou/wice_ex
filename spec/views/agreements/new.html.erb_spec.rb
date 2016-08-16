require 'spec_helper'

describe "agreements/new" do
  before(:each) do
    assign(:agreement, stub_model(Agreement,
      :name => "MyString",
      :orderer_id => 1
    ).as_new_record)
  end

  it "renders new agreement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", agreements_path, "post" do
      assert_select "input#agreement_name[name=?]", "agreement[name]"
      assert_select "input#agreement_orderer_id[name=?]", "agreement[orderer_id]"
    end
  end
end
