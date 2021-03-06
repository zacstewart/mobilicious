
PKG_FILES = [
  'init.rb',
  'lib',
  'lib/mobilicious',
  'lib/mobilicious/rails_ext.rb',
  'lib/mobilicious.rb',
  'MIT-LICENSE',
  'Rakefile',
  'README.md'
]
spec = Gem::Specification.new do |s|
  s.name = 'mobilicious'
  s.version = '0.0.3'
  s.author = 'Eric Mueller'
  s.email = 'nevinera@gmail.com'
  s.homepage = 'http://github.com/nevinera/mobilicious'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Making mobile-capable sites easier'
  s.files = PKG_FILES
  s.require_path = "lib"
  s.has_rdoc = false
  s.extra_rdoc_files = ["README.md"]
end

