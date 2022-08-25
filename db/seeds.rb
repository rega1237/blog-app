# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
=begin
first_user = User.create(name: 'Rafael', photo: 'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Olga', photo: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', bio: 'Virtual Assistant.')
third_user = User.create(name: 'Marco', photo: 'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', bio: 'Software Developer.')

first_post = Post.create(author: first_user, title: 'My first Post', text: 'RoR rocks')
second_post = Post.create(author: second_user, title: 'This is a post', text: 'Awesome content should display here')
third_post = Post.create(author: third_user, title: 'In the end', text: 'It doesnt even matter')

Post.create(author: first_user, title: 'My second Post', text: 'This post is empty you know?')
Post.create(author: first_user, title: 'Dummy post 1', text: 'Just a dummy post')
Post.create(author: first_user, title: 'Dummy post 2', text: 'Just a dummy post')
Post.create(author: first_user, title: 'Dummy post 3', text: 'Just a dummy post')

Post.create(author: second_user, title: 'My second Post', text: 'This post is empty you know?')
Post.create(author: second_user, title: 'Dummy post 1', text: 'Just a dummy post')
Post.create(author: second_user, title: 'Dummy post 2', text: 'Just a dummy post')
Post.create(author: second_user, title: 'Dummy post 3', text: 'Just a dummy post')

Post.create(author: third_user, title: 'My second Post', text: 'This post is empty you know?')
Post.create(author: third_user, title: 'Dummy post 1', text: 'Just a dummy post')
Post.create(author: third_user, title: 'Dummy post 2', text: 'Just a dummy post')
Post.create(author: third_user, title: 'Dummy post 3', text: 'Just a dummy post')

Comment.create(post: first_post, author: second_user, text: 'Hi Rafael!')
Comment.create(post: first_post, author: third_user, text: 'Awesome Post!')
Comment.create(post: first_post, author: third_user, text: 'Hi Rafael!')
Comment.create(post: first_post, author: second_user, text: 'Awesome Post!')

Comment.create(post: second_post, author: first_user, text: 'Hi Olga!')
Comment.create(post: second_post, author: third_user, text: 'Awesome Post!')
Comment.create(post: second_post, author: third_user, text: 'Hi Olga!')
Comment.create(post: second_post, author: first_user, text: 'Awesome Post!')

Comment.create(post: third_post, author: second_user, text: 'Hi Rafael!')
Comment.create(post: third_post, author: first_user, text: 'Awesome Post!')
Comment.create(post: third_post, author: first_user, text: 'Hi Rafael!')
Comment.create(post: third_post, author: second_user, text: 'Awesome Post!')
=end