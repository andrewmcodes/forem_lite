require_relative "lib/forem_lite/version"

Gem::Specification.new do |s|
  s.name = "forem_lite"
  s.version = ForemLite::VERSION
  s.authors = ["Andrew Mason"]
  s.email = ["andrewmcodes@protonmail.com"]
  s.licenses = "MIT"
  s.homepage = "https://github.com/andrewmcodes/forem_lite"

  s.summary = "A minimal API wrapper to retrieve Forem articles."
  s.description = s.summary
  s.metadata = {
    "bug_tracker_uri" => "#{s.homepage}/forem_lite/issues",
    "changelog_uri" => "#{s.homepage}/blob/main/CHANGELOG.md",
    "documentation_uri" => "#{s.homepage}/forem_lite",
    "homepage_uri" => "#{s.homepage}/forem_lite",
    "source_code_uri" => "#{s.homepage}/forem_lite"
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  s.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec|bin|tmp|.github)/}) }
  end

  s.require_paths = ["lib"]

  s.add_dependency "httparty", "~> 0.18.1"
  s.add_dependency "zeitwerk", "< 3.0"
end
