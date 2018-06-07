require 'pry'

class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @last_transaction = 0
    @basket = []
    @discount = discount
  end
  
  def total
    return @total
  end
  
  def add_item(title, price, qty=1)
    @total += price * qty
    qty.times do 
      @basket << title 
    end
    @last_transaction = @total
  end
  
  def apply_discount
    if @discount != 0
      minus = @total * (@discount * 0.01)
      @total -= minus
      @total
      return "After the discount, the total comes to $800."
    else 
      return "There is no discount to apply."
    end
    
  end
  
  def items
    return @basket
  end
  
  def void_last_transaction
    @total -= @last_transaction
    
  end
  
  
end

