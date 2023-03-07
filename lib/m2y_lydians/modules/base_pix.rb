module M2yLydians
  class BasePix < Base
    def self.format_response(original_response)
      if original_response.to_s.include?('NroConta')
        account_num = original_response.to_s.gsub(/\r?\n/, "").split(',')
        account_num = account_num.select{ |line| line.include?('NroConta') }.first.split(':').last.strip
      end
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

      begin
        response[:original_request] = original_response.request.raw_body
        response[:account_number] = account_num if account_num.present?
        response[:url] = original_response.request.uri
      rescue StandardError
        response[:original_request] = nil
        response[:url] = nil
      end

      # puts response
      response
    end
  end
end