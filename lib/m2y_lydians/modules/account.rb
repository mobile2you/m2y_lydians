module M2yLydians
  class Account < Base
    # /IncluirCCDigital_37
    def self.create_account(body)
      post(base_url + BASE_ACCOUNT_PATH + CREATE_ACCOUNT_PATH, parsed_body(body))
    end

    # /EnviarCodigoSMS_37
    def self.send_token(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + TOKEN_SMS_PATH, parsed_body(body))
    end

    # /ValidarCodigoSMS_37
    def self.validate_token(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + VALIDATE_TOKEN_SMS_PATH, parsed_body(body))
    end

    # /ContaSaldo_37
    def self.balance(body)
      post(base_url + BASE_ACCOUNT_PATH + BALANCE_PATH, parsed_body(body))
    end

    # /CartDebAtivarCartao_37
    def self.link_card(body)
      post(base_url + BASE_ACCOUNT_PATH + LINK_CARD_PATH, parsed_body(body))
    end

    # /ContaConsTitular_37
    def self.destination_account(body)
      post(base_url + BASE_ACCOUNT_PATH + DESTINATION_ACCOUNT_PATH, parsed_body(body))
    end

    # /ContaDepBoleto_37
    def self.generate_billet(body)
      post(base_url + BASE_ACCOUNT_PATH + GENERATE_BILLET_PATH, parsed_body(body))
    end

    # /ContaCartBoletos_37
    def self.list_billet(body)
      post(base_url + BASE_ACCOUNT_PATH + LIST_BILLET_PATH, parsed_body(body))
    end

    # /ContaPgtoTEF_37
    def self.perform_p2p(body)
      post(base_url + BASE_ACCOUNT_PATH + PERFORM_P2P_PATH, parsed_body(body))
    end

    # /ContaExtrato_37
    def self.bank_statement(body)
      post(base_url + BASE_ACCOUNT_PATH + BANK_STATEMENT_PATH, parsed_body(body))
    end

    # /ContaExtratoDet_37
    def self.receipt(body)
      post(base_url + BASE_ACCOUNT_PATH + RECEIPT_PATH, parsed_body(body))
    end
  end
end
