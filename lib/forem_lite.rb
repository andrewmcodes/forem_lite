require "httparty"
require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.setup

module ForemLite
  class Error < StandardError; end
end
