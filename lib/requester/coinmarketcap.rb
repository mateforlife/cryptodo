module Requester
  class Coinmarketcap
    include HTTParty
    base_uri 'https://api.coinmarketcap.com/v1/ticker'

    def initialize(coin_name, convert)
      @response = self.class.get("/#{coin_name}/?convert=#{convert}", format: :plain)
    end

    def parsed_response
      JSON.parse(@response, symbolize_names: true)
    end
  end
end