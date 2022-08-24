require 'rails_helper'

RSpec.describe 'Post content', type: :system do
  it 'Check the post\'s title' do
    visit('http://localhost:3000/users/1/posts/1')
    expect(page).to have_content('My first Post')
  end

  it 'Check who wrote the post' do
    visit('http://localhost:3000/users/1/posts/1')
    expect(page).to have_content('by Rafael')
  end

  it 'check how many comments the post has' do
    visit('http://localhost:3000/users/1/posts/1')
    expect(page).to have_content('Comments: 4')
  end

  it 'check how many comments the post has' do
    visit('http://localhost:3000/users/1/posts/1')
    expect(page).to have_content('Likes: 0')
  end

  it 'check the post body' do
    visit('http://localhost:3000/users/1/posts/1')
    expect(page).to have_content('RoR rocks')
  end

  it 'check the username of commentator' do
    visit('http://localhost:3000/users/1/posts/1')
    expect(page).to have_content('Olga: ')
    expect(page).to have_content('Marco: ')
  end

  it 'check the comment of commentator' do
    visit('http://localhost:3000/users/1/posts/1')
    expect(page).to have_content('Hi Rafael!')
    expect(page).to have_content('Awesome Post!')
  end
end
