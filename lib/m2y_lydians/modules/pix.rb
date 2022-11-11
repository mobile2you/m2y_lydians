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
  end
end
