# Rubocop

Rubocop is a linter & formatter for Ruby. We use the `rubocop-shopify` gem. Add it into the project:

`Gemfile`
```ruby
group :development do
  ...
  gem 'rubocop-shopify', require: false
end
```
Add a config file at the root of your project
`.rubocop.yml`
```yaml
inherit_gem:
  rubocop-shopify: rubocop.yml

Layout/LineLength:
  Max: 80 # dont allow lines longer than 80 chars

Style:
  Enabled: false # turn off style rules
```

Add some config to VSCode

```json
  "ruby.format": "rubocop",
  // If you want to format on save
  "editor.formatOnSave": true,
  "ruby.rubocop.onSave": true

```
