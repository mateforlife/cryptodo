module Utils 
  class PriceFormatter
    
    def convert_to(currency, amount)
      case currency.downcase
        when 'clp' then convert_to_clp(amount)
        else amount
      end
    end
    
    def convert_to_clp(amount)
      number_to_human(amount)
    end  

  end  
end  