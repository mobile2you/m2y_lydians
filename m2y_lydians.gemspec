lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'm2y_lydians/version'

Gem::Specification.new do |spec|
  spec.name          = 'm2y_lydians'
  spec.version       = M2yLydians::VERSION
  spec.authors       = ['Caio Lopes']
  spec.email         = ['caio.lopes@mobile2you.com.br']

  spec.summary       = "Lydians API Gem - #{spec.version}"
  spec.description   = 'Lydians API Gem'
  spec.homepage      = 'http://www.mobile2you.com.br'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_runtime_dependency 'httparty'
  # spec.add_runtime_dependency "openssl"
end
