# Paperless-ngx

## How do I install these formulae?

`brew install ingmarstein/paperless-ngx/<formula>`

Or `brew tap ingmarstein/paperless-ngx` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "ingmarstein/paperless-ngx"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Install and run paperless-ngx

Install paperless-ngx:

```shell
brew install ingmarstein/paperless-ngx/paperless-ngx
```

Configure paperless-ngx in `$(brew --prefix)/etc/paperless-ngx/paperless.conf`

Start services:

```shell
brew services start paperless-ngx
```

By default, the consume, data, media, etc. directories are in `"$(brew --prefix)/var/paperless-ngx/"`.
