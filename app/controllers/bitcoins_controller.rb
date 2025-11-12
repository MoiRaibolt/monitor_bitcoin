class BitcoinsController < ApplicationController
  def index
    @precos = Bitcoin.preco_atual
  end
  
  def atualizar
    render json: Bitcoin.preco_atual
  end
end
