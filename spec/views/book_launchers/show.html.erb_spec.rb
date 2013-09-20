require 'spec_helper'

describe "book_launchers/show" do
  before(:each) do
    @book_launcher = assign(:book_launcher, stub_model(BookLauncher,
      :book_id => 1,
      :launcher_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
