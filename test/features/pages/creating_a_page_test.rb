require 'test_helper'

feature 'page tracks page creator as a contributer' do
  scenario 'a user creates a page' do
    sign_in(:jimbo)

    visit new_page_path
    fill_in 'Title', with: 'Where is Canada?'
    fill_in 'Body', with: 'North America'
    click_button 'Save'

    page.must_have_content users(:jimbo).name
  end
end
