source "https://rubygems.org"
gemspec

# Pin working sass runtime to avoid Ruby 3.1 bug
gem "sass-embedded", "~> 1.68.0"
gem "jekyll-sass-converter", "~> 2.2"

gem "jekyll", "~> 4.3"
gem "rake"

gem "tzinfo-data"
gem "wdm", "~> 0.1.0" if Gem.win_platform?

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem "jekyll-paginate"
  gem "jekyll-sitemap"
  gem "jekyll-gist"
  gem "jekyll-feed"
  gem "jekyll-include-cache"
  gem "jekyll-seo-tag"
end
