require 'test_helper'

feature 'many users can edit a page' do
  scenario 'viewing page editors' do
    pages(:page).users << users(:sally)
    pages(:page).users << users(:jimbo)

    visit page_path(pages(:page))
    page.must_have_content users(:sally).name
    page.must_have_content users(:jimbo).name
  end
end
