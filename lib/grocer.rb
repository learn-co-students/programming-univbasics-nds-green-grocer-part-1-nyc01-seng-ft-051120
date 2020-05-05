require 'pry'
def find_item_by_name_in_collection(name, collection)
  collection.each do |things|
    if things[:item] == name
      return things
    end
  end
  return nil
end

def consolidate_cart(cart)
  my_cart = []
  cart.each do |things|
    if my_cart.include?(things) == false
      things[:count] = 1
      my_cart.push(things)
    else 
      things[:count] +=1
    end
  end
  my_cart
end
