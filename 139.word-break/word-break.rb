# @param {String} s
# @param {Set<String>} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  len = s.length
  mem = Array.new(len+1, false)
  1.upto(len) do |idx|
  
    if mem[idx] == false && word_dict.include?(s[0...idx])
      #puts "Match #{s[0...idx]}"
      mem[idx]=true
    end
    if mem[idx]
      return true if idx==len
      
      #puts "Check #{s[idx...len]}"
      (idx+1).upto(len) do |jdx|
        #puts "#{jdx}: #{mem[jdx]}: #{s[idx...jdx]}"
        
        if mem[jdx] == false && word_dict.include?(s[idx...jdx]) 
          #puts "Been set true"
          mem[jdx]=true
        end
        
        #print mem   
        
        if jdx==len && mem[jdx]
          # Be sure the last match hit the end
          return true
        end
      end
    end
  end
  
  false
end