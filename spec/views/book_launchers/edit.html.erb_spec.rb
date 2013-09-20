require 'spec_helper'

describe "book_launchers/edit" do
  before(:each) do
    @book_launcher = assign(:book_launcher, stub_model(BookLauncher,
      :book_id => 1,
      :launcher_id => 1
    ))
  end

  it "renders the edit book_launcher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_launcher_path(@book_launcher), "post" do
      assert_select "input#book_launcher_book_id[name=?]", "book_launcher[book_id]"
      assert_select "input#book_launcher_launcher_id[name=?]", "book_launcher[launcher_id]"
    end
  end
end
