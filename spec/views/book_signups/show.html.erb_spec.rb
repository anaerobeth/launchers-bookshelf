require 'spec_helper'

describe "book_signups/show" do
  before(:each) do
    @book_signup = assign(:book_signup, stub_model(BookSignup,
      :launcher_id => 1,
      :book_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
