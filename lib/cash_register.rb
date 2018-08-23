class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, quantity = 1, price)
    self.items << item
    total_price = price * quantity
    @total += total_price
  end

  def apply_discount
    discount_amt = self.total * (self.discount/100)
    self.total = self.total * discount_amt
  end
end
