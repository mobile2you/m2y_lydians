module M2yLydians
  class Statement < Base
    ### BANK STATEMENT & RECEIPTS ###

    # Coc.svc/ContaExtrato_37
    def self.bank_statement(body)
      post(base_url + BASE_ACCOUNT_PATH + BANK_STATEMENT_PATH, parsed_body(body))
    end

    # Coc.svc/ContaExtratoDet_37
    def self.receipt(body)
      post(base_url + BASE_ACCOUNT_PATH + RECEIPT_PATH, parsed_body(body))
    end
  end
end
