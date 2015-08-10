require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle execution path', {:type => :feature}) do

  it('takes entries and returns the type of triangle') do
   visit('/')
   fill_in('base', :with => '4')
   fill_in('side_one', :with => '4')
   fill_in('side_two', :with => '4')

   click_button('Submit')
   expect(page).to have_content('The side lengths that you provided would make a equilateral triangle')
 end
end
