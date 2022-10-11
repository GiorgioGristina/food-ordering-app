class Menu
    def initialize
        @menu_list = {}
    end

    def list
        @menu_list
    end

    def add(name, price)
        @menu_list[name] = price
    end

   
end