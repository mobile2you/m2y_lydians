# frozen_string_literal: true

require 'm2y_lydians/configuration/configuration'
require 'm2y_lydians/constants/constants'
require 'm2y_lydians/modules/base'
require 'm2y_lydians/modules/base_pix'

require 'm2y_lydians/modules/account'
require 'm2y_lydians/modules/authenticator'
require 'm2y_lydians/modules/pix'
require 'm2y_lydians/modules/billet'
require 'm2y_lydians/modules/sms'
require 'm2y_lydians/modules/statement'
require 'm2y_lydians/modules/transaction'
require 'm2y_lydians/modules/pix_key'

module M2yLydians
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    config = configuration
    yield(config)
  end
end
