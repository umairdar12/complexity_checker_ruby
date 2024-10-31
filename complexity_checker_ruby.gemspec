# complexity_checker_ruby.gemspec
Gem::Specification.new do |spec|
  spec.name          = "complexity_checker_ruby"
  spec.version       = "0.1.0"
  spec.authors       = ["Umair Dar"]
  spec.email         = ["umairdar.work@gmail.com"]
  spec.summary       = "A gem to analyze time complexity of Ruby code."
  spec.description   = "This gem profiles Ruby code to estimate its time complexity."
  spec.homepage      = "https://github.com/umairdar12/complexity_checker_ruby"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*", "README.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  spec.add_dependency "benchmark"
end
