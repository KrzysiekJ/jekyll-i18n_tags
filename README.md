# jekyll-i18n_tags

This [Jekyll](https://jekyllrb.com) plugin provides a simple tag for translating templates.

## Installation

Add the `jekyll-i18n_tags` gem to the `:jekyll_plugins` group in your `Gemfile`:

```ruby
group :jekyll_plugins do
  gem 'jekyll-i18n_tags', '~>1'
end
```

## Usage

Put the configuration and translations in your `_config.yml`:

```yaml
# Source language is optional. If set, translations to it will not be
# performed.
source_lang: en
translations:
  pl:
    Hello, world!: Witaj, świecie!
```

In your templates, use the `t` tag:

```liquid
{% t Hello, world! %}
```

For each page which uses the translation tag, you need to set `lang` variable (you may want to use [front matter defaults](http://jekyllrb.com/docs/configuration/#front-matter-defaults) to faciliate this).

## Versioning

This project uses [semantic versioning](http://semver.org/).

## License

This software is licensed under [the MIT License](LICENSE).
