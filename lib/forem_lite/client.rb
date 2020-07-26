module ForemLite
  class Client
    include HTTParty
    base_uri "https://dev.to/api/"

    #
    # Create a new client object with your Forem API key.
    #
    # @param [String] api_key <Forem/Dev.to API Key>
    #
    def initialize(api_key = nil)
      self.class.default_options[:headers] = {"api-key" => api_key} if api_key
    end

    #
    # Retrieve a list of articles.
    #
    # @return [Array<Object>] collection of ForemLite::Article objects
    #
    def articles
      self.class.get("/articles").tap { |z| ForemLite::Article.new(z) }
    end

    #
    # Retrieve a single published article given its id.
    #
    # @param [Integer, String] id <a string or integer representing the article id>
    #
    # @return [Object] a FormCli::Article object
    #
    def article(id)
      ForemLite::Article.new(self.class.get("/articles/#{id}"))
    end
  end
end
