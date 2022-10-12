require "menu"
require "order"
require "confirmation_message"

RSpec.describe "integration" do
    it "when I oredere the food I receive a message with estimated delivery" do
        menu = Menu.new()
        menu.add("pasta", 6)
        menu.add("cake", 4)
        order = Order.new(menu)
        order.add("pasta", 3)
        order.add("cake", 1)
        expect(order.confirm_order!("+447365262727")).to eq "Sent from your Twilio trial account - Thank you! Your order was placed and will be delivered before #{(Time.now + 1800).strftime('%H:%M')}"

    end
end

