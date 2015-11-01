Gem::Specification.new do |gem|
  gem.authors       = ["Pavel"]
  gem.email         = ["solonovich.pavel@gmail.com"]
  gem.summary       = "Simple gem for transliteration RU symbols to EN."
  gem.description   = "Simple gem for transliteration RU symbols to EN."
  gem.homepage      = "https://github.com/owlugl/Transliteration"
  gem.license       = "MIT"
  gem.name          = "transliteration"
  gem.require_paths = ["lib"]
  gem.version       = "1.1.0"
  gem.files = [
    'README.md',
    'LICENSE',
    'Gemfile',
    'Gemfile.lock'
    'transliteration.gemspec',
    'lib/transliteration.rb',
    'lib/hash_symbols.json'
  ]
  gem.add_development_dependency 'json', '~> 1.8'
end
