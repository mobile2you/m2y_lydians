module M2yLydians
  class Transaction < Base
    ### TRANSACTIONS ###

    # Coc.svc/ContaPgtoTEF_37
    def self.perform_p2p(body)
      post(base_url + BASE_ACCOUNT_PATH + PERFORM_P2P_PATH, parsed_body(body))
    end

    # Coc.svc/ContaPgtoTED_37
    def self.perform_ted(body)
      post(base_url + BASE_ACCOUNT_PATH + PERFORM_TED_PATH, parsed_body(body))
    end

    # Coc.svc/ContaPgtoDOC_37
    def self.perform_doc(body)
      post(base_url + BASE_ACCOUNT_PATH + PERFORM_DOC_PATH, parsed_body(body))
    end

    ### AUXILIARY METHODS ###

    # Glb.svc/IFsConsultar_37
    def self.bank_list
      post(base_url + BASE_GLB_PATH + BANK_LIST_PATH, parsed_body({}))
    end
  end
end
