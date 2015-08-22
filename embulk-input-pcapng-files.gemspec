
Gem::Specification.new do |spec|
  spec.name          = "embulk-input-pcapng-files"
  spec.version       = "0.1.3"
  spec.authors       = ["enukane"]
  spec.summary       = "Pcapng Files input plugin for Embulk"
  spec.description   = "Pcapng Files input plugin for Embulk"
  spec.email         = ["enukane@glenda9.org"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/enukane/embulk-input-pcapng-files"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  #spec.add_dependency 'YOUR_GEM_DEPENDENCY', ['~> YOUR_GEM_DEPENDENCY_VERSION']
  spec.add_development_dependency 'bundler', ['~> 1.0']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
