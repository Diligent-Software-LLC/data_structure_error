lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

VERSION = "1.1.4"

Gem::Specification.new do |spec|
  spec.name    = "data_structure_error"
  spec.version = VERSION
  spec.authors = ["Bradley J. Tannor", "Diligent Software LLC"]
  spec.email   = ["diligentsoftwarellc@gmail.com"]

  spec.summary               = %q{A DataStructureError exception class interface and
Abstract Base class.}
  spec.description           = %q{Declares a DataStructureError exception class
interface and Abstract Base class. Contains a DataStructureError
library's method signatures, constants, and attributes.}
  spec.homepage              = 'https://www.diligentsoftware.org'
  spec.license               = "MIT"
  spec.required_ruby_version = "~> 2.6.5"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host' to allow pushing to a single host or delete this
  # section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = " Set to 'http://mygemserver.com'"
  #
  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = 'https://www.github' +
      '.com/Diligent-Software-LLC/data_structure_error'
  #   spec.metadata["changelog_uri"]   = " Put your gem's CHANGELOG.md URL here."
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

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
