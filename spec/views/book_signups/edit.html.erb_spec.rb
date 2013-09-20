require 'spec_helper'

describe "book_signups/edit" do
  before(:each) do
    @book_signup = assign(:book_signup, stub_model(BookSignup,
      :launcher_id => 1,
      :book_id => 1
    ))
  end

  it "renders the edit book_signup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_signup_path(@book_signup), "post" do
      assert_select "input#book_signup_launcher_id[name=?]", "book_signup[launcher_id]"
      assert_select "input#book_signup_book_id[name=?]", "book_signup[book_id]"
    end
  end
end
