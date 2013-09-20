require 'spec_helper'

describe "book_launchers/new" do
  before(:each) do
    assign(:book_launcher, stub_model(BookLauncher,
      :book_id => 1,
      :launcher_id => 1
    ).as_new_record)
  end

  it "renders new book_launcher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_launchers_path, "post" do
      assert_select "input#book_launcher_book_id[name=?]", "book_launcher[book_id]"
      assert_select "input#book_launcher_launcher_id[name=?]", "book_launcher[launcher_id]"
    end
  end
end
