
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "swann_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "swann_view_tool"
  spec.version       = SwannViewTool::VERSION
  spec.authors       = ["Stephen Swann"]
  spec.email         = ["swann.stephen@gmail.com"]

  spec.summary       = %q{This gem pastes a copyright statement for use in your footer.}
  spec.description   = %q{This will get the current year and past it along with your name and
                          a message and store it in a @copyright variable for use in things
                          like your footer.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
