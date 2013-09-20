class BookSignup < ActiveRecord::Base
    it {should have_valid(:book_id).when(1, 5)}
    it {should_not have_valid(:book_id).when('', nil, -1)}

    it {should have_valid(:signups).when(1, 5)}
    it {should_not have_valid(:signups).when('', nil, -1)}
end
