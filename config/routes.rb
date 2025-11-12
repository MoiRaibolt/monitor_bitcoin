Rails.application.routes.draw do
  root "bitcoins#index"
  get "atualizar_preco", to: "bitcoins#atualizar"
end

