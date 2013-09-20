require 'spec_helper'

feature 'user signs up for books', %Q{
  As a launcher
  I want to sign up for books in the Launcher Library
  So that I can let the owner know I want to borrow them
  } do
# Acceptance Criteria:
  # * can sign up for books
  # * can list the books signed up for
  # * can list the launchers in a book queue


  scenario 'user signs up for a book in the library' do
    visit new_book_signup_path

    click_button 'Create Book signup'

    expect(page).to have_content('Book signup was successfully created')

  end

  scenario 'user signs up for another book in the library' do
    visit new_book_signup_path

    click_button 'Create Book signup'

    expect(page).to have_content('Book signup was successfully created')

  end

  # scenario 'user removes his name from a book queue' do
  #   visit new_book_signup_path

  #   click_on 'Destroy'

  #   expect(page).to_not have_content('Book signup was successfully deleted')

  # end
end