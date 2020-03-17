lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'data_structure_error'

Gem::Specification.new do |spec|

  spec.name    = "data_structure_error"
  spec.version = DataStructureError::VERSION
  spec.authors = ["Bradley J. Tannor", "Diligent Software LLC"]
  spec.email   = ["diligentsoftwarellc@gmail.com"]

  spec.summary               = %q{A DataStructureError exception class
interface.}
  spec.description           = %q{Declares a DataStructureError exception class
interface. Contains a DataStructureError library's method signatures,
constants, and attributes.}
  spec.homepage = 'https://docs.diligentsoftware.org'
  spec.license               = "MIT"
  spec.required_ruby_version = "~> 2.6.5"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = 'https://www.github' +
      '.com/Diligent-Software-LLC/data_structure_error'
  spec.metadata["changelog_uri"]   =
      "https://docs.diligentsoftware" +
          ".org/data_structure_error/interface#changelog"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  # into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development and testing dependencies
  spec.add_development_dependency "bundler", "~> 2.1.2"
  spec.add_development_dependency "simplecov", "~> 0.17.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"

end
