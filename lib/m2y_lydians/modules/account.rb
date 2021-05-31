module M2yLydians
  class Account < Base
    # Coc.svc/IncluirCCDigital_37
    def self.create_account(body)
      post(base_url + BASE_ACCOUNT_PATH + CREATE_ACCOUNT_PATH, parsed_body(body))
    end

    # Coc.svc/ContaSaldo_37
    def self.balance(body)
      post(base_url + BASE_ACCOUNT_PATH + BALANCE_PATH, parsed_body(body))
    end

    # Coc.svc/CartDebAtivarCartao_37
    def self.link_card(body)
      post(base_url + BASE_ACCOUNT_PATH + LINK_CARD_PATH, parsed_body(body))
    end

    # Coc.svc/ContaConsTitular_37
    def self.destination_account(body)
      post(base_url + BASE_ACCOUNT_PATH + DESTINATION_ACCOUNT_PATH, parsed_body(body))
    end
  end
end
