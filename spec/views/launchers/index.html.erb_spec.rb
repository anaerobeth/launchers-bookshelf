require 'spec_helper'

describe "launchers/index" do
  before(:each) do
    assign(:launchers, [
      stub_model(Launcher,
        :user_name => "User Name"
      ),
      stub_model(Launcher,
        :user_name => "User Name"
      )
    ])
  end

  it "renders a list of launchers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
  end
end
