module M2yLydians
  class Configuration
    attr_writer :server_url, :pix_server_url, :certification, :pix_certification, :env

    def initialize
      @server_url = nil
      @pix_server_url = nil
      @certification = nil
      @pix_certification = nil
      @env = nil
    end

    def server_url
      @server_url
    end

    def pix_server_url
      @pix_server_url
    end

    def certification
      @certification
    end

    def pix_certification
      @pix_certification
    end

    def env
      @env
    end

    def production?
      env.to_s.upcase == 'PRD'
    end
  end
end
