# see: notes/Rails 7 with Tailwind and HMR.md

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