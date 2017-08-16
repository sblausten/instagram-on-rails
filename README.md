# Instagram

This was a project I revisited from scratch to refresh my Rails.

It is a fairly basic rails app with bootstrap styling using [Devise](https://github.com/plataformatec/devise) for authentication, the [Paperclip](https://github.com/thoughtbot/paperclip) gem for images and [Factory Girl](https://github.com/thoughtbot/factory_girl) for mocking.

Users can do the following:
- Register, sign in and sign out
- Post a picture with a caption
- View a feed of all posts from all Users

## To view locally

```bash
git clone https://github.com/sblausten/instagram-on-rails.git
cd instagram-on-rails
bundle i
rake db:create
rake db:migrate
rails server
```

Navigate to localhost:3000 in your browser and register as a user.


## To run tests
Do all the above except running the server. Then:
```bash
rspec
```

If that does not pick up any specs try:
```bash
rake spec
```

## To do
### Own posts
- Posts in main feed are labelled with the name of the user who created them
- A user can see a feed of only their posts

### Like posts
- A user can 'like' other users' posts
- A user can only 'like' a post once
- A user cannot 'like' their own post
- A user can 'unlike' a post they have liked

### Comments
- A user can comment on other users' posts
- Comments appear in all post feeds

### Onboarding
- A user who is not logged in can view the main feed

### Following
- A user can view a list of other users
- A user can search for other users
- A user can follow other users
- A user can view a feed of posts from people they follow

### Mobile
- A user can use less data when viewing images they have already viewed
- A user can view a number of posts on the main feed while offline
- A user can like a post while offline
