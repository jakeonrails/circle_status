# circle_status

This gem is a CLI tool to fetch your Circle CI server's build status report for your current git repo/branch. It was built because Circle CI's user interface lacks a way to easily get a simple list of test failure files, for use when debugging a failing spec locally.

The output looks like this:

![](https://raw.githubusercontent.com/jakeonrails/circle_status/master/screenshot.png)

## Installation

```sh
gem install circle_status
```

## Connecting to your Circle CI account

The circle_status tool requires a Circle API token. It can be found or created here: https://circleci.com/account/api

Put the token in your `.bashrc` or `.zshrc` file, like this:

`export CIRCLE_CI_TOKEN="your token here"`

## Usage

Navigate to a git repository that is hooked up to Circle CI and type:

`circle-status`

You should see something like the following:

![](https://raw.githubusercontent.com/jakeonrails/circle_status/master/screenshot.png)

## How it works

`circle-status` looks at the origin remote of your Git repo and parses out the Github Username and the Project/Repo name from the remote URL. It works with both the SSH URL and the HTTPS URL. Then it uses the API token stored in the environment variable CIRCLE_CI_TOKEN to connect to that project's Circle CI builds list, for the currently checked out branch in Git.

## Todo:

 - Improve the feedback when `circle-status` can't connect to the Circle API
 - allow for CLI flags/options to control the git username, repo, and branch
 - allow for more detailed information about specs, including the failure message and a few lines of stacktrace

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/circle_status.
