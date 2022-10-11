# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
require "json"
account_sid = 'ACaf19d76c1de44e9fe584da6c46e29404'
auth_token = 'ef9011259e4e1d7c8c01b7b322b39257'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+13253993507' # Your Twilio number
to = '+447365262727' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "ciao Giorgio c e l hai fatta ad usare l api"
)

p JSON.parse(client)
