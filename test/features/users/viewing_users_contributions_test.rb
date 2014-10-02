require 'test_helper'

feature 'viewing user contributions' do
  scenario 'can see all the pages a user has edited' do
    users(:sally).pages << pages(:page)
    users(:sally).pages << pages(:page2)

    visit user_path(users(:sally))
    page.must_have_content pages(:page).title
    page.must_have_content pages(:page2).title
  end
end
