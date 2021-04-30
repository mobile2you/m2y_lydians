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
      begin
        response = HTTParty.post(url, headers: headers, body: body.to_json, debug_output: $stdout)
      rescue Timeout::Error
        return timeout_response
      end
      format_response(response)
    end

    def self.get(url, headers = nil)
      headers = base_headers if headers.nil?
      puts "Sending GET request to URL: #{url}"
      begin
        response = HTTParty.get(url, headers)
      rescue Timeout::Error
        return timeout_response
      end
      format_response(response)
    end

    def self.parsed_body(body)
      body[:VersaoXML] = 1
      body
    end

    def self.format_response(original_response)
      original_response.body.force_encoding('UTF-8')
      response = original_response.parsed_response

      status_code = original_response.code
      if status_code.blank?
        # Erro 503 retorna um html em parsed_response
        status_code = response.include?('Error 503') ? 503 : 500
        description = 'Houve um erro inesperado, tente novamente mais tarde'
      end

      response = { body: response } if response.is_a?(Array)
      response = {} unless response.is_a?(Hash)
      response[:status_code] = status_code
      response['Descricao'] = description if description.present?

      puts response
      response
    end

    def self.timeout_response
      {
        status_code: 408,
        'Descricao': 'Houve um erro inesperado, tente novamente mais tarde'
      }
    end
  end
end
