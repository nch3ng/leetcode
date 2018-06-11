# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  hash = Hash.new
  max=0
  prev_dup = 0
  is_dup = false
  s.each_char.with_index do |c ,idx|
    if hash.has_key?(c)
      is_dup=true
      if (idx - prev_dup)  > max
        max = idx-prev_dup
      end
      #puts "Key #{c} is at #{hash[c]}"
      tmp = hash[c]
      #puts "Delete: from #{prev_dup} to #{hash[c]-prev_dup+1} #{s[prev_dup, hash[c]-prev_dup+1]}"
      s[prev_dup, hash[c]-prev_dup+1].each_char do |c|
        hash.delete(c)
      end
      prev_dup = tmp+1
    else
      #puts "#{c} does not exist."
    end

    hash[c]=idx
  end

  if s.length - prev_dup > max
    max = s.length - prev_dup
  end

  if !is_dup
    max = s.length
  end
  return max
end