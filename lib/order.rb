class Order
    def initialize(menu)
        @menu = menu
        @order = {}
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

    

end

# menu = Menu.new