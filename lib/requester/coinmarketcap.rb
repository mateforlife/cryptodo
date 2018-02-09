module Requester
  class Coinmarketcap
    include HTTParty
    base_uri 'https://api.coinmarketcap.com/v1/ticker'

    def initialize(currency, convert)
      @response = self.class.get("/#{currency}/?convert=#{convert}", format: :plain)
    end

    def parsed_response
      JSON.parse(@response, symbolize_names: true)
    end
  end
end