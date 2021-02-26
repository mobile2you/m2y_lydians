module M2yLydians
  class Configuration
    attr_writer :server_url, :certification

    def initialize
      @server_url = nil
      @certification = nil
    end

    def server_url
      @server_url
    end

    def certification
      @certification
    end
  end
end
