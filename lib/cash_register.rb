
class CashRegister
    attr_accessor :total
    attr_accessor :previoustotal
    attr_reader :discount
    attr_accessor :itemArray

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @itemArray = []
    end

    def add_item(title, price, optional = 1)
        @previoustotal = self.total
        self.total += (price*optional)
        optional.times {self.itemArray << title}
    end

    def apply_discount()

        if discount == 0
            "There is no discount to apply."
        else
            self.total = self.total * (100-self.discount)/100
            "After the discount, the total comes to $800."
        end

    end

    def items
        self.itemArray
    end

    def void_last_transaction
        self.total = @previoustotal
        self.itemArray.pop
    end



end
