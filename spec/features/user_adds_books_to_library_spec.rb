require 'spec_helper'

feature 'user adds books', %Q{
  As a launcher
  I want to add books to the Launcher Library
  So that I can share my books with other launchers
  } do
# Acceptance Criteria:
  # * must specify a title
  # * must specify author(s)
  # * must specify owner

  scenario 'user adds a book using a valid information' do
    prev_count = Book.count
    visit new_book_path

    fill_in 'Title', with: 'Rails 3 Way'
    fill_in 'Author', with: 'Obie Fernandez'
    fill_in 'Owner', with: 'Beth'
    click_button 'Create Book'

    expect(page).to have_content('Your book has been added to the Launchers Library.')
    expect(Book.count).to eql(prev_count + 1)

  end

  scenario 'user fails to a book using invalid information' do
    prev_count = Book.count
    visit new_book_path

    click_button 'Create Book'

    expect(page).to_not have_content('Your book has been added to the Launchers Library.')
    expect(Book.count).to eql(prev_count)
  end
end

