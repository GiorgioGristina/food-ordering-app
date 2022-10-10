require "menu"

RSpec.describe Menu do
    context "construct" do
        it "without any dish list an empty hash" do
            menu = Menu.new()
            expect(menu.list).to eq({})
        end

        it "adding some dishes, will list all of them" do
            menu = Menu.new()
            menu.add("lasagna", 9.00)
            menu.add("parmiggiana", 8.00)
            menu.add("arancini", 4.50)

            expect(menu.list).to eq({"lasagna" => 9.00,
                                     "parmiggiana" => 8.00,
                                     "arancini" => 4.5                   
                                                })
        end
    end
end