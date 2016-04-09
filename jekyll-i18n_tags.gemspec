require 'English'

Gem::Specification.new do |s|
  s.name = 'jekyll-i18n_tags'
  s.version = '1.0.0'
  s.author = 'Krzysztof Jurewicz'
  s.email = 'krzysztof.jurewicz@gmail.com'
  s.summary = 'Translate your Jekyll templates.'
  s.description = 'Tags for translating Jekyll templates.'
  s.homepage = 'https://github.com/KrzysiekJ/jekyll-i18n_tags'
  s.license = 'MIT'

  s.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR).grep(%r{^lib/})
  s.extra_rdoc_files = ['README.md', 'LICENSE']

  s.add_development_dependency 'rubocop', '~> 0.38', '>= 0.38.0'
end
