module M2yLydians
  class Pix < Base
    # Pix.svc/PIXChaveListar
    def self.list_pix_keys(body)
      post(pix_url + BASE_PIX_PATH + KEYS_LIST_PATH, parsed_body(body), pix_headers)
    end
  end
end