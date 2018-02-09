class PricesController  < ApplicationController
  
  def index 
    @Coins = 
    [
      {name: 'Bitcoin', coin: @Bitcoin = Requester::Coinmarketcap.new('bitcoin', 'CLP')},
      {name: 'Ethereum', coin: @Ethereum = Requester::Coinmarketcap.new('ethereum', 'CLP')},
      {name: 'Litecoin', coin: @Litecoin = Requester::Coinmarketcap.new('litecoin', 'CLP')},
      {name: 'Dash', coin: @Dash = Requester::Coinmarketcap.new('dash', 'CLP')},
      {name: 'Ripple', coin: @Ripple = Requester::Coinmarketcap.new('ripple', 'CLP')}
    ]
  end
end
