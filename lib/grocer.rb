require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |each_item_hash|
    if name==each_item_hash[:item]
      return each_item_hash
    end
  end
  nil
end


def consolidate_cart(cart)
  consolidated_cart = []
  
  cart.each do |each_item_hash|

    
     
    if find_item_by_name_in_collection(each_item_hash[:item],consolidated_cart) 
      
     consolidated_cart.each do |each_new_item_hash|
       if each_item_hash[:item] == each_new_item_hash[:item]
       each_new_item_hash[:count] += 1
       end
     end
    
   else
     each_item_hash[:count] = 1 
     consolidated_cart << each_item_hash
   end


end
consolidated_cart
end


  