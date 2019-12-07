# CliProject

This Ruby Gem provides a CLI to view the current 50 most popular albums on Spotify. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cli_project'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cli_project

## Usage
You can write things like playlist.name without having to think about what API call you need to make. 
Some other usage examples; 
playlist.tracks.sort_by(&:name)
playlist.tracks.sort_by(&:popularity)
playlist.tracks.first.name


Enter the below and follow the on screen prompts. 

cli_project

## Development

https://i.imgur.com/USqAJzv.jpg

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'crisp-subprogram-3914'/cli_project. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CliProject project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'crisp-subprogram-3914'/cli_project/blob/master/CODE_OF_CONDUCT.md).
