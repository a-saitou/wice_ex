require 'spec_helper'

describe "orderers/edit" do
  before(:each) do
    @orderer = assign(:orderer, stub_model(Orderer,
      :name => "MyString"
    ))
  end

  it "renders the edit orderer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orderer_path(@orderer), "post" do
      assert_select "input#orderer_name[name=?]", "orderer[name]"
    end
  end
end
