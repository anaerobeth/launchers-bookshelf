require 'spec_helper'

describe "book_launchers/index" do
  before(:each) do
    assign(:book_launchers, [
      stub_model(BookLauncher,
        :book_id => 1,
        :launcher_id => 2
      ),
      stub_model(BookLauncher,
        :book_id => 1,
        :launcher_id => 2
      )
    ])
  end

  it "renders a list of book_launchers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
