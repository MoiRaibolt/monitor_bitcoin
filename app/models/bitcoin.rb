require 'httparty'

class Bitcoin
  include HTTParty
  base_uri 'https://api.coingecko.com/api/v3'

  def self.preco_atual
    response = get('/simple/price?ids=bitcoin&vs_currencies=usd,brl')
    data = response.parsed_response
    {
      usd: data['bitcoin']['usd'],
      brl: data['bitcoin']['brl']
    }
  end
end
