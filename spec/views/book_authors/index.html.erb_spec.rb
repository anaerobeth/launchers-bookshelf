require 'spec_helper'

describe "book_authors/index" do
  before(:each) do
    assign(:book_authors, [
      stub_model(BookAuthor,
        :book_id => 1,
        :author_id => 2
      ),
      stub_model(BookAuthor,
        :book_id => 1,
        :author_id => 2
      )
    ])
  end

  it "renders a list of book_authors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
