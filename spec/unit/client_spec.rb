require "json"

RSpec.describe ForemLite::Article do
  subject(:article) { ForemLite::Article.new(article_options) }
  let(:article_options) { JSON.parse(File.read(fixture("article.json"))) }

  describe "#initialize" do
    it "returns a ForemLite::Article object" do
      expect(article.class).to eq ForemLite::Article
    end
  end

  describe "#valid_methods" do
    it "responds to type_of" do
      expect(article.type_of).to eq "article"
    end

    it "responds to id" do
      expect(article.id).to eq "12345"
    end
  end

  describe "#invalid_methods" do
    it { expect { article.cars }.to raise_exception NoMethodError }
  end
end
