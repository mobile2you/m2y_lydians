module M2yLydians
  class Base
    def self.base_url
      M2yLydians.Configuration.server_url
    end

    def self.base_headers
      headers = {}
      headers['Content-Type'] = 'application/json'
      headers['LYD-Certificado'] = M2yLydians.Configuration.certification
      headers
    end

    def self.post(url, body, headers = nil)
      headers = base_headers if headers.nil?
      HTTParty.post(url, headers: headers, body: body)
    end

    def self.get(url, headers = nil)
      headers = base_headers if headers.nil?
      HTTParty.get(url, headers)
    end
  end
end
