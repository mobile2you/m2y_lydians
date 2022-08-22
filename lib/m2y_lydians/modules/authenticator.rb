module M2yLydians
  class Authenticator < Base
    # Aut.svc/AtualizarCredencial_37
    def self.update_credentials(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + UPDATE_CREDENTIALS_PATH, parsed_body(body))
    end

    # Aut.svc/AlterarSenhaAcesso_37
    def self.create_access_password(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + CREATE_ACCESS_PASSWORD_PATH, parsed_body(body))
    end

    # Aut.svc/ValidarSenhaAcesso_37
    def self.check_access_password(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + CHECK_ACCESS_PASSWORD_PATH, parsed_body(body))
    end

    # Aut.svc/AtualizarSenhaAcesso_37
    def self.update_access_password(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + UPDATE_ACCESS_PASSWORD_PATH, parsed_body(body))
    end

    # Aut.svc/ConsultarIdPositiva_37
    def self.random_questions(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + RANDOM_QUESTIONS_PATH, parsed_body(body))
    end

    # Aut.svc/ValidarIdPositiva_37
    def self.check_random_answer(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + CHECK_RANDOM_ANSWER_PATH, parsed_body(body))
    end

    # Aut.svc/AlterarSenhaTrans_37
    def self.create_transaction_password(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + CREATE_TRANSACTION_PASSWORD_PATH, parsed_body(body))
    end

    # Aut.svc/ValidarSenhaTrans_37
    def self.check_transaction_password(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + CHECK_TRANSACTION_PASSWORD_PATH, parsed_body(body))
    end

    # Aut.svc/ConsultarCredencial_37
    def self.check_password_status(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + CHECK_PASSWORD_STATUS_PATH, parsed_body(body))
    end

    # Aut.svc/BloquearSenhaAcesso_37
    def self.block_app_password(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + BLOCK_APP_PASSWORD_PATH, parsed_body(body))
    end

    # Aut.svc/BloquearSenhaTrans_37
    def self.block_transactional_password(body)
      post(base_url + BASE_AUTHENTICATOR_PATH + BLOCK_TRANSACTIONAL_PASSWORD_PATH, parsed_body(body))
    end
  end
end
