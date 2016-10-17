require 'spec_helper'

feature 'setting a key to a value' do

  scenario "visiting the homepage" do
    visit '/'
    expect(page).to have_content("Please enter the key and value you want to store")
  end

  scenario "entering the key and value" do
    visit '/'
    fill_in('key', with: 'randomkey')
    fill_in('value', with: '12345')
    click_button('Submit')
    expect(page).to have_content('Your key/value pair is randomkey=12345')
  end

end
