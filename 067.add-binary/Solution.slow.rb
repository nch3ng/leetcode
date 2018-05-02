# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  stack_a = []
  stack_b = []
  carry = 0
  ans=""
  i=0
  
  while i < a.length do
    stack_a.push(a[i])
    i = i+1
  end
  
  i=0
  
  while i < b.length do
    stack_b.push(b[i])
    i = i+1
  end
  
  while !stack_a.empty? || !stack_b.empty? do
  
    a = stack_a.pop().to_i
    b = stack_b.pop().to_i
    
    c = a+b+carry
    
    if c == 3
      carry=1
      c=1
    elsif c == 2
      carry=1
      c=0
    else
      carry=0
    end
    
    
    
    ans = c.to_s + ans
  end
  
  if carry == 1 then
    ans = carry.to_s + ans
  end
  ans
end


add_binary("100", "11111")