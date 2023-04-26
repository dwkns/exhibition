# Rails 7 with Tailwind and HMR (Live Reload)



## Dependencies

* ruby 3.1.3
* rails 7.0.4.2



## Initial setup

```bash
 rails new my-app -c tailwind
```



## Live reloading

Uses [Rails Live Reload](https://github.com/railsjazz/rails_live_reload) for live browser reloading JS & CS

Add the Rails Live Reload Gem

`Gemfile`

```ruby
group :development do
  gem "rails_live_reload"
end
```

And install with:

```bash
$ bundle install
```

### Recommended config

Add `rails_live_reload` config for auto reloads when you change views, models & controllers etc. 

`config/initializers/rails_live_reload.rb`

```ruby
RailsLiveReload.configure do |config|
  config.url = "/rails/live/reload"

  # Default watched folders & files
  config.watch %r{app/views/.+\.(erb|haml|slim)$}
  config.watch %r{(app|vendor)/(assets|javascript)/\w+/(.+\.(css|js|html|png|jpg|ts|jsx)).*}, reload: :always

  # Warch controllers, models helpers and locales:
  config.watch %r{app/controllers/.+\.rb}, reload: :always
  config.watch %r{app/models/.+\.rb}, reload: :always
  config.watch %r{app/helpers/.+\.rb}, reload: :always
  config.watch %r{config/locales/.+\.yml}, reload: :always

  config.enabled = Rails.env.development?

end if defined?(RailsLiveReload)
```

### Restart server

You can't use `rails s` you need to run Foreman & a Procfile

```bash
$ ./bin/dev
```

