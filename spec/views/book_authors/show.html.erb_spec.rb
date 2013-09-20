require 'spec_helper'

describe "book_authors/show" do
  before(:each) do
    @book_author = assign(:book_author, stub_model(BookAuthor,
      :book_id => 1,
      :author_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
