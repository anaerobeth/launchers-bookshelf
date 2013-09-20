require 'spec_helper'

describe "book_authors/edit" do
  before(:each) do
    @book_author = assign(:book_author, stub_model(BookAuthor,
      :book_id => 1,
      :author_id => 1
    ))
  end

  it "renders the edit book_author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_author_path(@book_author), "post" do
      assert_select "input#book_author_book_id[name=?]", "book_author[book_id]"
      assert_select "input#book_author_author_id[name=?]", "book_author[author_id]"
    end
  end
end
