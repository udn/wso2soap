# WSO2 Soap Client


## Installation

Add this line to your application's Gemfile:

    gem 'wso2soap'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wso2soap

## Usage

NOTE: Still in development

Implemented method:

- `Wso2soap::client.call()`

## Configuration

Add an initializer e.g config/initializers/wso2soap.rb

```ruby
Wso2soap.configure do |config|
  config.username = 'Username to access SOAP'
  config.password = 'Password to access SOAP'
end
```