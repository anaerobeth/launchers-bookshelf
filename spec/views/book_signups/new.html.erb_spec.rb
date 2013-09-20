require 'spec_helper'

describe "book_signups/new" do
  before(:each) do
    assign(:book_signup, stub_model(BookSignup,
      :launcher_id => 1,
      :book_id => 1
    ).as_new_record)
  end

  it "renders new book_signup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_signups_path, "post" do
      assert_select "input#book_signup_launcher_id[name=?]", "book_signup[launcher_id]"
      assert_select "input#book_signup_book_id[name=?]", "book_signup[book_id]"
    end
  end
end
