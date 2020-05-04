require "pry"
def find_item_by_name_in_collection(name, collection)

 count = 0 

 while count < collection.length do
  if name == collection[count][:item]  
   return collection[count]
  end 
   count += 1
 end 
end


def consolidate_cart(cart)
  count = 0 
  consolidated = []
  
  while count < cart.length do
    cart_element = cart[count]
    cart_element[:count] = 1 
    
    if consolidated.include?(cart_element)
      cart_element[:count] += 1 
    else
      consolidated.push(cart_element)
    end 
   count += 1
  end 
  consolidated
 end 
    # binding.pry
  



#iterate thru cart array 
#if ele is duplicate, count +=1 
#else count = 1 
#return new array of values
#assign a variable to the return value 

  