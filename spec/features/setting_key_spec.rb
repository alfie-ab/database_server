require 'spec_helper'

feature 'setting a key to a value' do

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  scenario "visiting the homepage" do
    visit '/'
    expect(page).to have_content("Please enter the key and value you want to store")
  end

  scenario "entering the key and value" do
    visit '/set?key=value'
    expect(page).to have_content("Your key/value pair is key=value")
  end

end
