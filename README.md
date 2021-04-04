# FbaseAuth ![build](https://github.com/joaoscotto/fbase_auth/workflows/build/badge.svg?event=push)

FbaseAuth is a Ruby wrapper for [Firebase Authentication](https://firebase.google.com/docs/auth).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fbase_auth'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fbase_auth

## Usage


### Configuration example:

```ruby

FbaseAuth.configure do |config| 
  config.api_key = 'example'
  config.return_secure_token = false #(default is true)
end
```
### Usage examples:

```ruby
FbaseAuth::Client.sign_up(email:, password: '')
FbaseAuth::Client.sign_in_with_password(email:, password: '')
FbaseAuth::Client.send_email_verification(id_token: '')
FbaseAuth::Client.confirm_email_verification(oob_code: '')
FbaseAuth::Client.send_password_reset_email(email: '')
FbaseAuth::Client.verify_password_reset_code(oob_code: '')
FbaseAuth::Client.confirm_password_reset(oob_code: '', new_password: '')
FbaseAuth::Client.delete_account(id_token: '')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joaoscotto/fbase_auth.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
