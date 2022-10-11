require 'twilio-ruby'

class ConfirmationMessage
    def initialize(request, phone_number)
        @phone = phone_number     
        @request = request   
    end

    def send
       api_call.body
    end

    def api_call()
        # account_sid = 'ACaf19d76c1de44e9fe584da6c46e29404'
        # auth_token = 'ef9011259e4e1d7c8c01b7b322b39257'
        # client = @request.new(account_sid, auth_token)

        from = '+13253993507' # Your Twilio number
        to = @phone # Your mobile phone number
      
        message = @request.messages.create(
        from: from,
        to: to,
        body: "Thank you! Your order was placed and will be delivered before 18:52"
        )
        p message.date_updated
        return message
    end
end

sen_sms = ConfirmationMessage.new(Twilio::REST::Client.new('ACaf19d76c1de44e9fe584da6c46e29404', 'ef9011259e4e1d7c8c01b7b322b39257'), '+447365262727')
sen_sms.send