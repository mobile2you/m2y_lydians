module M2yLydians
  class Base
    def self.base_url
      M2yLydians.configuration.server_url
    end

    def self.base_headers
      headers = {}
      headers['Content-Type'] = 'application/json'
      headers['LYD-Certificado'] = M2yLydians.configuration.certification
      headers
    end

    def self.post(url, body, headers = nil)
      headers = base_headers if headers.nil?
      puts "Sending POST request to URL: #{url}"
      response = HTTParty.post(url, headers: headers, body: body.to_json, debug_output: $stdout)
      format_response(response)
    end

    def self.get(url, headers = nil)
      headers = base_headers if headers.nil?
      puts "Sending GET request to URL: #{url}"
      response = HTTParty.get(url, headers)
      format_response(response)
    end

    def self.parsed_body(body)
      body[:VersaoXML] = 1
      body
    end

    def self.format_response(original_response)
      original_response.body.force_encoding('UTF-8')
      response = original_response.parsed_response
      response[:status_code] = original_response.code if response.is_a?(Hash)
      puts response
      response
    end
  end
end
