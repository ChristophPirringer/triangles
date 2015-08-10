require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangles_path', {:type => :feature}) do
  it('searches the result page for the length of the triangle-sides') do
    visit('/')
    fill_in('a', :with => '5')
    fill_in('b', :with => '6')
    fill_in('c', :with => '7')
    click_button('Tell Me!')
    expect(page).to have_content("6")
  end

end
