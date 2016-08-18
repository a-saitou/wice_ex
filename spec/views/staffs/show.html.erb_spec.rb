require 'spec_helper'

describe "staffs/show" do
  before(:each) do
    @staff = assign(:staff, stub_model(Staff,
      :name => "Name",
      :office => "Office",
      :order => 1,
      :wage => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Office/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
  end
end
