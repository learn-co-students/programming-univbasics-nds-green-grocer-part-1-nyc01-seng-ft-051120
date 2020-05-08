

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |grocery_shelf_array|
        if grocery_shelf_array[:item] == name
          return grocery_shelf_array
        end
  end
  return nil
end

def consolidate_cart(cart)
  consolidated_cart_array = []
  cart.each do |grocery_info|
    if consolidated_cart_array.none? do |consolidated_info|
      grocery_info[:item] == consolidated_info[:item]
      end
      consolidated_cart_array << grocery_info.merge({:count => 1})
    else
      consolidated_cart_array.each do |consolidated_info|
        if grocery_info[:item] == consolidated_info[:item]
          consolidated_info[:count] = consolidated_info[:count] + 1
        end
      end
    end
  end
  consolidated_cart_array
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

end
