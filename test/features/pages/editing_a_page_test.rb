require 'test_helper'

feature 'a page tracks its editors' do
  scenario 'a user edits a page' do
    sign_in(:sally)

    visit edit_page_path(pages(:page))
    fill_in 'Body', with: 'Nope'
    click_button 'Save'
    page.must_have_content 'Nope'
    page.must_have_content users(:sally).name
  end
end
