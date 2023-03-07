module M2yLydians
  class PixKey < BasePix
    # Pix.svc/PIXConsultar
    def self.search_pix_key(body)
      post(pix_url + BASE_PIX_PATH + SEARCH_KEY_PATH, parsed_body(body), pix_headers)
    end
  end
end