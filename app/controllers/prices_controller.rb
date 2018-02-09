class PricesController  < ApplicationController
  
  def index 
    @Coins = 
    [
      {name: 'Bitcoin', coin: @Bitcoin = Requester::Coinmarketcap.new('bitcoin', 'CLP')},
      {name: 'Ethereum', coin: @Ethereum = Requester::Coinmarketcap.new('ethereum', 'CLP')},
      {name: 'Litecoin', coin: @Litecoin = Requester::Coinmarketcap.new('litecoin', 'CLP')}
    ]
  end
end
