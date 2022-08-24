require 'rails_helper'

RSpec.describe 'User content', type: :system do
  it 'check exist img' do
    visit('http://localhost:3000/users/1')
    expect(page).to have_selector('img.user-photo')
  end

  it 'Check the username' do
    visit('http://localhost:3000/users/1')
    expect(page).to have_content('Rafael')
  end

  it 'check the number of post' do
    visit('http://localhost:3000/users/1')
    expect(page).to have_content('Number of post: 5')
  end

  it 'check the user bio' do
    visit('http://localhost:3000/users/1')
    expect(page).to have_content('Teacher from Mexico.')
  end

  it 'check the user posts' do
    visit('http://localhost:3000/users/1')
    expect(page).to have_content('Dummy post 1')
    expect(page).to have_content('Dummy post 2')
    expect(page).to have_content('Dummy post 3')
  end

  it 'check the see all post button' do
    visit('http://localhost:3000/users/1')
    expect(page).to have_content('See all posts')
  end

  scenario 'go to user post' do
    visit('http://localhost:3000/users/1')
    click_link('Dummy post 1')
    expect(page).to have_content('Dummy post 1')
  end

  scenario 'go to user post' do
    visit('http://localhost:3000/users/1')
    click_link('See all posts')
    expect(page).to have_content('Dummy post 1')
    expect(page).to have_content('Dummy post 2')
    expect(page).to have_content('Dummy post 3')
    expect(page).to have_content('My first Post')
  end
end
