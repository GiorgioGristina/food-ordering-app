require "order"

RSpec.describe Order do
    context "when ordering" do
        it "it will show the grand total" do
           
            menu = double :menu 
            expect(menu).to receive(:list).and_return({"lasagna" => 9.00,
                                                        "parmiggiana" => 8.00,
                                                        "arancini" => 4.5                   
                                                                })
            
            order = Order.new(menu)
            order.add("parmiggiana", 2)
            expect(order.receipt).to eq "product: parmiggiana qty: 2\n total: 16.0"
            
        end    
        
        it "it will confirm the order and send a message" do
            menu = double :menu
            order = Order.new(menu)
            
            expect(order.confirm_order!(("+447365262727"))).to eq "Sent from your Twilio trial account - Thank you! Your order was placed and will be delivered before #{(Time.now + 1800).strftime('%H:%M')}"
            
        end    
    end
end