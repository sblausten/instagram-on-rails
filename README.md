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
