# coding: utf-8

# Compiling the Gem
# gem build nsrr.gemspec
# gem install ./nsrr-x.x.x.gem --no-ri --no-rdoc --local
#
# gem push nsrr-x.x.x.gem
# gem list -r nsrr
# gem install nsrr
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nsrr/version'

Gem::Specification.new do |spec|
  spec.name          = "nsrr"
  spec.version       = Nsrr::VERSION::STRING
  spec.authors       = ["Remo Mueller"]
  spec.email         = ["remosm@gmail.com"]
  spec.summary       = %q{The official ruby gem to simplify file downloads and dataset integration tasks for the NSRR website, https://sleepdata.org}
  spec.description   = %q{The official ruby gem to simplify file downloads and dataset integration tasks for the NSRR website, https://sleepdata.org}
  spec.homepage      = "https://github.com/nsrr/nsrr-gem"
  spec.license       = "CC BY-NC-SA 3.0"

  spec.files = Dir['{bin,lib}/**/*'] + ['CHANGELOG.md', 'LICENSE', 'Rakefile', 'README.md', 'nsrr.gemspec']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rake"
  spec.add_dependency "minitest"
  spec.add_dependency "minitest-reporters"
  spec.add_dependency "colorize", "~> 0.7.3"

  spec.add_development_dependency "bundler", "~> 1.6"
end