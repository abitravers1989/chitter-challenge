require './app.rb'

feature 'There is a homepage' do
  scenario 'Homepage exists' do
    visit '/home'
    expect(page.status_code).to eq 200
  end
  scenario 'Homepage has welcome text' do
    visit '/home'
    expect(page).to have_content "Welcome to Chitter"
  end
end

feature 'Home page has ability to add posts' do
  scenario 'There is a button to submit new posts' do
    visit '/home'
    click_button "Yes I like my own opinions and know others will too"
    expect(current_path).to eq "/new_post"
  end
end

# feature 'Home page has to view posts' do
#   scenario 'Old posts are displayed on homepage' do
#
#   end
# end