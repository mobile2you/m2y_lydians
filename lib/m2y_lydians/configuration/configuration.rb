module M2yLydians
  class Configuration
    attr_writer :server_url, :certification, :env

    def initialize
      @server_url = nil
      @certification = nil
      @env = nil
    end

    def server_url
      @server_url
    end

    def certification
      @certification
    end

    def env
      @env
    end

    def production?
      env.to_s.upcase == 'PRD'
    end
  end
end
