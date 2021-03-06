lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Minnesota_Agriculture/version"

Gem::Specification.new do |spec|
  spec.name          = "Minnesota_Agriculture"
  spec.version       = MinnesotaAgriculture::VERSION
  spec.authors       = ["Matthew Ream"]
  spec.email         = ["matthewtimothyream@gmail.com"]

  spec.summary       = "Minnesota_Agriculture is a gem that navigates a user through a table of data containing a comprehensive list of crops that were produced in Minnesota during 2018, additionally providing several quantitative measurements for each crop's production."
  spec.description   = "Provides the user with a data driven approach to understanding Minnesota Agriculture production during 2018"
  spec.homepage      = "https://www.nass.usda.gov/Quick_Stats/Ag_Overview/stateOverview.php?state=MINNESOTA"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://github.com"
  spec.metadata["changelog_uri"] = "http://github.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
