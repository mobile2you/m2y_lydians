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
  end
end
