require 'spec_helper'

feature 'getting a key to a value' do

  scenario "retrieving the key and value" do
    visit '/set?alfie=22'
    visit '/get?key=alfie'
    expect(page).to have_content("22")
  end

end
