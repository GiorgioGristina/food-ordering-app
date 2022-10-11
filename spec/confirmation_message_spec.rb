require "confirmation_message"
require 'twilio-ruby'

RSpec.describe ConfirmationMessage do
    it "it will send a message" do
       
        # expect(twilio).to receive(:new).with(account_sid, auth_token).and_return()
        obj1 = double :x
        obj = double :obj, create: obj1
        twilio = double :twilio, messages: obj
        expect(obj1).to receive(:body).and_return("Sent from your Twilio trial account - Thank you! Your order was placed and will be delivered before 18:52")
        # expect(twilio).to receive(:messages)
        #     .and_return(double :object)
        # expect(twilio).to receive(:messages).and_return("Sent from your Twilio trial account - Thank you! Your order was placed and will be delivered before 18:52")
            conf_text = ConfirmationMessage.new(twilio ,"+447365262727")
        expect(conf_text.send).to eq "Sent from your Twilio trial account - Thank you! Your order was placed and will be delivered before 18:52"
    end
end