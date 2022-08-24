require 'rails_helper'

RSpec.describe 'Static content', type: :system do
  it 'shows the static text' do
    visit('http://localhost:3000/users')
    expect(page).to have_selector('div.user-info')
  end

  it 'check exist img' do
    visit('http://localhost:3000/users')
    expect(page).to have_selector('img.user-photo')
  end

  it 'check the number of post' do
    visit('http://localhost:3000/users')
    expect(page).to have_content('Number of post: 5')
  end

  scenario 'go to user post' do
    visit('http://localhost:3000/users')
    click_link('Rafael')
    expect(page).to have_content('Teacher from Mexico')
  end
end
