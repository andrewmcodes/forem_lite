module ForemLite
  class Article
    attr_accessor :raw

    #
    # Article Initializer
    #
    # @param [Hash] options <the article attributes returned by Forem>
    #
    def initialize(options)
      @raw = options
    end

    #
    # Intercept NoMethodError exceptions and handle gracefully.
    #
    # @param [Symbol] method_sym <symbolized name of the method being called>
    # @param [Hash] *arguments <the arguments passed in to this method. Can be any number, or none>
    # @param [Object] &block <the block of the method called>
    #
    # @return [String, Object] the method return value or NoMethodError
    #
    def method_missing(method_sym, *arguments, &block)
      if @raw&.keys&.include?(method_sym.to_s)
        @raw[method_sym.to_s]
      else
        super
      end
    end

    #
    # Hook method to return whether the obj can respond to id method or not.
    #
    # @param [Symbol] method_sym <symbolized name of the method being called>
    # @param [Boolean] include_private <indicates whether to include private methods in the search scope>
    #
    # @return [Boolean, Object] <returns true if we can respond to the method, otherwise NoMethodError>
    #
    def respond_to?(method_sym, include_private = false)
      if @raw&.keys&.include?(method_sym.to_s)
        true
      else
        super
      end
    end
  end
end
