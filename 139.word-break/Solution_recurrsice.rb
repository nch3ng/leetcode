def word_break_recurrsive(s, word_dict)
  
  return true if s.length==0
  
  1.upto(s.length) do |idx|
    #puts "#{word_dict.include?(s[0...idx])}: #{s[0...idx]}"
    if word_dict.include?(s[0...idx])
      #puts "Check the work break of #{s[idx...s.length]}"  
      return true if word_break_recurrsive(s[idx,s.length-1], word_dict)
    end
  end
  false
end