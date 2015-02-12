module Wso2soap
  class Configuration
    attr_accessor :username, :password
  end

  class << self
    attr_accessor :configuration
  end

  # Configure Wso2soap someplace sensible,
  # like config/initializers/wso2soap.rb
  #
  # @example
  #   Wso2soap.configure do |config|
  #     config.username = 'your username'
  #     config.password = 'your password'
  #   end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end