class PricesController < ApplicationController
  def index
    @Bitcoin = Requester::Coinmarketcap.new('bitcoin', 'CLP')
    
    @Ethereum = Requester::Coinmarketcap.new('ethereum', 'CLP')

    @Litecoin = Requester::Coinmarketcap.new('litecoin', 'CLP')
    
  end
end
