# require 'twilio-ruby'

class ConfirmationMessage
    def initialize(request, phone_number)
        @phone = phone_number     
        @request = request   
    end

    def send
       api_call.body
    end

    def api_call
        from = '+13253993507' # Your Twilio number
        to = @phone # Your mobile phone number
      
        message = @request.messages.create(
        from: from,
        to: to,
        body: "Thank you! Your order was placed and will be delivered before #{(Time.now + 1800).strftime('%H:%M')}"
        )
        return message
    end
end

# sen_sms = ConfirmationMessage.new(Twilio::REST::Client.new('ACaf19d76c1de44e9fe584da6c46e29404', 'ef9011259e4e1d7c8c01b7b322b39257'), '+447365262727')
# sen_sms.send