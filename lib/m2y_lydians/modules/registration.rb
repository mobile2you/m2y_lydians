module M2yLydians
  class Registration < Base
    def self.update_credentials(body)
      post(base_url + UPDATE_CREDENTIALS_PATH, body).parsed_response
    end

    def self.change_password(body)
      post(base_url + CHANGE_PASSWORD_PATH, body).parsed_response
    end
  end
end
