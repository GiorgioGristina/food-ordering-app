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
    end
end