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
  end
end
