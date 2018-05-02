require 'rest-client'
require 'vcr'

require 'webmock'
include WebMock::API

WebMock.enable!

VCR.configure do |config|
  config.cassette_library_dir = "fixtures"
  config.hook_into :webmock
end

VCR.use_cassette 'response' do
  response = RestClient.post 'https://example.com/foo', {}
  hash = CGI.parse(response)
  puts "baz: #{hash['baz']}"
end
