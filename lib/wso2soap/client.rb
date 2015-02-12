module Wso2soap
  module Client
    def self.call(url, method, message={})
      client = Savon::Client.new(wsdl: url)
      response = if message 
        client.call(method, message)
      else
        client.call(method)
      end
      if response.success?
        return response.body
      else
        return Wso2soap::ErrorMessages.failed_response(response)
      end
      rescue Exception => e
        return Wso2soap::ErrorMessages.exception(e)
    end

    def self.call_secure(url, method, message={})
      client = Savon::Client.new(wsdl: url,  ssl_verify_mode: :none,:wsse_auth => [ Wso2soap.configuration.username, Wso2soap.configuration.password], :wsse_timestamp => true)
      response = if message 
        client.call(method, message)
      else
        client.call(method)
      end
      if response.success?
        return response.body
      else
        return Wso2soap::ErrorMessages.failed_response(response)
      end
      rescue Exception => e
        return Wso2soap::ErrorMessages.exception(e)
    end
  end
end