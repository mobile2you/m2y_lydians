module M2yLydians
  class Registration < Base
    # /AtualizarCredencial_37
    def self.update_credentials(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + UPDATE_CREDENTIALS_PATH, parsed_body(body))
    end

    # /AlterarSenhaAcesso_37
    def self.create_access_password(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + CREATE_ACCESS_PASSWORD_PATH, parsed_body(body))
    end

    # /ValidarSenhaAcesso_37
    def self.check_access_password(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + CHECK_ACCESS_PASSWORD_PATH, parsed_body(body))
    end

    # /AtualizarSenhaAcesso_37
    def self.update_access_password(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + UPDATE_ACCESS_PASSWORD_PATH, parsed_body(body))
    end

    # /AtualizarPerguntasSeg_37
    def self.save_security_questions(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + SAVE_SECURITY_QUESTIONS, parsed_body(body))
    end

    # /ValidarPerguntasSeg_37
    def self.check_security_questions(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + CHECK_ACCESS_PASSWORD_PATH, parsed_body(body))
    end

    # /EnviarMensagemSMS_37
    def self.send_sms(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + SEND_SMS_PATH, parsed_body(body))
    end

    # /ConsultarIdPositiva_37
    def self.random_questions(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + RANDOM_QUESTIONS_PATH, parsed_body(body))
    end

    # /ValidarIdPositiva_37
    def self.check_random_answer(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + CHECK_RANDOM_ANSWER_PATH, parsed_body(body))
    end
  end
end
