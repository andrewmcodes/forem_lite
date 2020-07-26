RSpec.describe ForemLite do
  subject(:api) { ForemLite::Client.new(api_key) }
  let(:api_key) { "MY_API_KEY" }

  describe "#initialize" do
    it "returns a ForemLite::Client object" do
      expect(api.class).to eq ForemLite::Client
    end
  end

  describe "#articles" do
    let(:forem_url) { "/articles" }
    let(:forem_response) { instance_double(HTTParty::Response, body: forem_response_body) }
    let(:forem_response_body) { "response_body" }

    before do
      allow(ForemLite::Client).to receive(:get).and_return(forem_response)
      api.articles
    end

    it "fetches all user articles from the Forem API" do
      expect(ForemLite::Client).to have_received(:get).with(forem_url)
    end
  end

  describe "#article" do
    let(:forem_url) { "/articles/1234" }
    let(:forem_response) { instance_double(HTTParty::Response, body: forem_response_body) }
    let(:forem_response_body) { "response_body" }

    before do
      allow(ForemLite::Client).to receive(:get).and_return(forem_response)
      api.article(1234)
    end

    it "fetches an article with a specific ID from Forem API" do
      expect(ForemLite::Client).to have_received(:get).with(forem_url)
    end
  end
end
