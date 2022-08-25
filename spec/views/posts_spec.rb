require 'rails_helper'

RSpec.describe 'Posts content', type: :system do
  it 'check exist img' do
    visit('http://localhost:3000/users/1/posts')
    expect(page).to have_selector('img.user-photo')
  end

  it 'Check the username' do
    visit('http://localhost:3000/users/1/posts')
    expect(page).to have_content('Rafael')
  end

  it 'check the number of post' do
    visit('http://localhost:3000/users/1/posts')
    expect(page).to have_content('Number of post: 5')
  end

  it 'check the post title' do
    visit('http://localhost:3000/users/1/posts')
    expect(page).to have_content('My first Post')
  end

  it 'check the post body' do
    visit('http://localhost:3000/users/1/posts')
    expect(page).to have_content('RoR rocks')
  end

  it 'check the first comments on a post' do
    visit('http://localhost:3000/users/1/posts')
    expect(page).to have_content('Olga: Awesome Post!')
    expect(page).to have_content('Marco: Hi Rafael!')
  end

  it 'check how many comments a post has' do
    visit('http://localhost:3000/users/1/posts')
    expect(page).to have_content('Comments: 4')
  end

  it 'check how many likes a post has' do
    visit('http://localhost:3000/users/1/posts')
    expect(page).to have_content('Likes: 0')
  end

  it 'check section for pagination if there are more posts than fit on the view' do
    visit('http://localhost:3000/users/1/posts')
    expect(page).to have_content('Pagination')
  end

  scenario 'When I click on a post, it redirects to that post\'s show page' do
    visit('http://localhost:3000/users/1/posts')
    click_link('My first Post')
    expect(page).to have_content('My first Post by Rafael')
  end
end
