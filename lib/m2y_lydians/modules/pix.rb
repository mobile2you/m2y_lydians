module M2yLydians
  class Pix < Base
    # Pix.svc/PIXChaveListar
    def self.list_pix_keys(body)
      post(pix_url + BASE_PIX_PATH + KEYS_LIST_PATH, parsed_body(body), pix_headers)
    end

    def self.register_pix_key(body)
      post(pix_url + BASE_PIX_PATH + REGISTER_KEY_PATH, parsed_body(body), pix_headers)
    end

    # Pix.svc/PIXChaveExcluir
    def self.delete_pix_key(body)
      post(pix_url + BASE_PIX_PATH + DELETE_KEY_PATH, parsed_body(body), pix_headers)
    end

    # Pix.svc/PIXConsultar
    def self.search_pix_key(body)
      post(pix_url + BASE_PIX_PATH + SEARCH_KEY_PATH, parsed_body(body), pix_headers)
    end

    # Pix.svc/PIXTransferir_v2
    def self.perform_pix(body)
      post(pix_url + BASE_PIX_PATH + PERFORM_PIX_PATH, parsed_body(body), pix_headers)
    end

    # Pix.svc/PIXParticipantes
    def self.get_pix_banks
      post(pix_url + BASE_PIX_PATH + GET_PIX_BANKS, pix_headers)
    end

    #Pix.svc/PIXQRCodeConsultar_v2
    def self.qrcode_decode(body)
      post(pix_url + BASE_PIX_PATH + QRCODE_DECODE, parsed_body(body), pix_headers)
    end

    #Pix.svc/PIXRecReivListar
    def self.received_claim_key_list(body)
      post(pix_url + BASE_PIX_PATH + RECEIVED_KEY_CLAIM_LIST, parsed_body(body), pix_headers)
    end

    #Pix.svc/PIXRecReivConfirmar
    def self.received_claim_key_confirm(body)
      post(pix_url + BASE_PIX_PATH + RECEIVED_KEY_CLAIM_CONFIRM, parsed_body(body), pix_headers)
    end

    #Pix.svc/PIXRecReivCancelar
    def self.received_claim_key_cancel(body)
      post(pix_url + BASE_PIX_PATH + RECEIVED_KEY_CLAIM_CANCEL, parsed_body(body), pix_headers)
    end

    #Pix.svc/PIXSolReivCriar
    def self.sent_claim_key_create(body)
      post(pix_url + BASE_PIX_PATH + SENT_KEY_CLAIM_CREATE, parsed_body(body), pix_headers)
    end

    #Pix.svc/PIXSolReivListar
    def self.sent_claim_key_list(body)
      post(pix_url + BASE_PIX_PATH + SENT_KEY_CLAIM_LIST, parsed_body(body), pix_headers)
    end

    #Pix.svc/PIXSolReivConcluir
    def self.sent_claim_key_conclude(body)
      post(pix_url + BASE_PIX_PATH + SENT_KEY_CLAIM_CONCLUDE, parsed_body(body), pix_headers)
    end

    #Pix.svc/PIXSolReivCancelar
    def self.sent_claim_key_cancel(body)
      post(pix_url + BASE_PIX_PATH + SENT_KEY_CLAIM_CANCEL, parsed_body(body), pix_headers)
    end

  end
end
