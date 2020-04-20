def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find{|x| x[:item] == name}

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_cart = []
  cart.each do |item|
    if find_item_by_name_in_collection(item[:item],consolidated_cart)
      list_item = consolidated_cart.find{|x| x[:item] == item[:item]}
      list_item[:count]+=1
    else
      list_item = item.reduce({})do |memo,(key,value)|
        memo[key] = value
        memo
      end
      list_item[:count] = 1 
      consolidated_cart.push(list_item)
    end
  end
  consolidated_cart
end


  