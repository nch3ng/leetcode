# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  i=a.length-1
  j=b.length-1
  c=0
  sum=''
  while i>=0 || j>=0 do
    
    if i>=0 then
      c=c+a[i].to_i
    end
    
    if j>=0 then
      c=c+b[j].to_i
    end
    
    sum = (c%2).to_s+sum
    
    if c > 1 then
      c=1
    else
      c=0
    end
    i = i-1
    j = j-1
  end
  
  if c == 1 then
    sum = c.to_s + sum
  end
    
  return sum
end