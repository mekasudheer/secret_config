lib = File.expand_path("lib", __dir__)
$:.unshift lib unless $:.include?(lib)

# Maintain your gem's version:
require "secret_config/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name                  = "secret_config"
  s.version               = SecretConfig::VERSION
  s.platform              = Gem::Platform::RUBY
  s.authors               = ["Reid Morrison"]
  s.homepage              = "https://config.rocketjob.io"
  s.summary               = "Centralized Configuration and Secrets Management for Ruby and Rails applications."
  s.files                 = Dir["lib/**/*", "bin/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files            = Dir["test/**/*"]
  s.license               = "Apache-2.0"
  s.required_ruby_version = ">= 2.3"
  s.bindir                = "bin"
  s.executables           = ["secret-config"]
  s.add_dependency "concurrent-ruby"
end
