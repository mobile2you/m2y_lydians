module M2yLydians
  class Sms < Base
    # Aut.svc/EnviarMensagemSMS_37
    def self.send_sms(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + SEND_SMS_PATH, parsed_body(body))
    end

    # Aut.svc/EnviarCodigoSMS_37
    def self.send_token(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + TOKEN_SMS_PATH, parsed_body(body))
    end

    # Aut.svc/ValidarCodigoSMS_37
    def self.validate_token(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + VALIDATE_TOKEN_SMS_PATH, parsed_body(body))
    end
  end
end
