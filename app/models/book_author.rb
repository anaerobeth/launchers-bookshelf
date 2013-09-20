class BookAuthor < ActiveRecord::Base

    it {should have_valid(:book_id).when(1, 5)}
    it {should_not have_valid(:book_id).when('', nil, -1)}
    it {should have_valid(:author_id).when(1, 5)}
    it {should_not have_valid(:author_id).when('', nil, -1)}


end
