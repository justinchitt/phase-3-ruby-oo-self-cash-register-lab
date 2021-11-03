class CashRegister
    attr_accessor :total, :discount, :lastprice
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @arry = []
    end
    def add_item(title, price, quantity=1)
        if (quantity > 1)
            i=0
            while i < quantity
                @arry << title 
                i +=1
            end
        else
            @arry << title 
        end
        @lastprice = price * quantity
        @total = @total + price * quantity
    end
    def apply_discount
        if (discount > 0)
            @total = @total - (@total  * @discount / 100)
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end
    def items
        @arry
    end
    def void_last_transaction
        @total = @total - @lastprice
    end
end
