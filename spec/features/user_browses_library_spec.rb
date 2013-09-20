require 'spec_helper'

feature 'user browses books', %Q{
  As a launcher
  I want to browse the books in the Launcher Library
  So that I can borrow books from other launchers
  } do
# Acceptance Criteria:
  # * can browse books
  # * can search by title
  # * can search by author(s)
  # * can search by owner

  scenario 'user browses the books in the library' do
    visit books_path
    expect(page).to have_content('Launchers Library')

  end

  scenario 'user searches for an available book by keyword' do
    visit books_path

    fill_in 'Search', with: 'rails'
    click_button 'Search'

    expect(page).to have_content('Match found!')

  end

  scenario 'user searches for another available book by keyword' do
    visit books_path

    fill_in 'Search', with: 'Dave Thomas'
    click_button 'Search'
    expect(page).to have_content('Match found!')

  end

  scenario 'user searches for a book that is not in the library' do
    visit books_path

    fill_in 'Search', with: 'bananas'
    click_button 'Search'

    expect(page).to_not have_content('Match found!')

  end
end

