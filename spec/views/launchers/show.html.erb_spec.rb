require 'spec_helper'

describe "launchers/show" do
  before(:each) do
    @launcher = assign(:launcher, stub_model(Launcher,
      :user_name => "User Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User Name/)
  end
end
