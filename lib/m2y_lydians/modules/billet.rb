module M2yLydians
  class Billet < Base
    ### OWN BILLETS METHODS ###

    # Coc.svc/ContaDepBoleto_37
    def self.generate_billet(body)
      post(base_url + BASE_ACCOUNT_PATH + GENERATE_BILLET_PATH, parsed_body(body))
    end

    # Coc.svc/ContaCartBoletos_37
    def self.list_billet(body)
      post(base_url + BASE_ACCOUNT_PATH + LIST_BILLET_PATH, parsed_body(body))
    end

    # Coc.svc/ContaDepBoletoPDF_37
    def self.billet_pdf(body)
      post(base_url + BASE_ACCOUNT_PATH + BILLET_PDF_PATH, parsed_body(body))
    end

    ### PAY BILLETS METHODS ###

    # Coc.svc/ContaPgtoBoleCons_37
    def self.check_billet_data(body)
      post(base_url + BASE_ACCOUNT_PATH + CHECK_BILLET_DATA_PATH, parsed_body(body))
    end

    # Coc.svc/ContaPgtoBoleto_37
    def self.pay_billet(body)
      post(base_url + BASE_ACCOUNT_PATH + PAY_BILLET_PATH, parsed_body(body))
    end
  end
end