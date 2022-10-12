require_relative "./menu"
require_relative "./confirmation_message"
require 'twilio-ruby'
require 'dotenv/load'



class Order
    def initialize(menu)
        @menu = menu
        @order = {}
        confirm_order = false
    end

    def add(dish, quantity)
            @order[dish] = quantity
    end

    def receipt
        
        string_recipet = ""
        total = 0
        @order.each do |k, v|
           
           total += @menu.list[k] * v 
           string_recipet += "product: #{k} qty: #{v}\n"
        end
        string_recipet += " total: #{total}"
       
    end
# need to test confirmed order
    def confirm_order!(phone_number)
        @confirm_order = true
        conf_sms = ConfirmationMessage.new(Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']), phone_number )
        conf_sms.send
    end

end

# menu = Menu.new
# menu.add("pasta", 6)
# ord = Order.new(menu)
# ord.add("pasta", 3)
# ord.receipt
# p ord.confirm_order!("+447365262727")
