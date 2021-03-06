class Order
  MENU_ERR = 'Item not on menu'.freeze

  def initialize menu
    @menu = menu
    @order = Hash.new(0)
  end

  def add dish, quantity
    fail MENU_ERR unless on_menu? dish
    @order[dish.name] += quantity
    @order[:total] += (@menu.view[dish.name] * quantity)
  end

  def summary
    @order.clone
  end

  private

  def ordered? dish
    @order.key?(dish.name)
  end

  def on_menu? dish
    !!@menu.view[dish.name]
  end

end
