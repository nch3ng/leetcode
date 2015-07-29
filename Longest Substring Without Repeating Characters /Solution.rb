str = 'adedefrsfrsfrgtgsfcdcscgtgsfdsccdcrgxgsz'
str1= 'dvdf'
str2= 'aaaaaaaaaaaaaa'
str3= 'c'
str4= 'axr'
str5= 'aab'
str6= 'cdabtred'
str7= 'abba'
str8= 'ohomm'
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
puts "Max length of #{str} = #{length_of_longest_substring(str)}"
puts "Max length of #{str1}  = #{length_of_longest_substring(str1)}"
puts "Max length of #{str2}  = #{length_of_longest_substring(str2)}"
puts "Max length of #{str3}  = #{length_of_longest_substring(str3)}"
puts "Max length of #{str4}  = #{length_of_longest_substring(str4)}"
puts "Max length of #{str5}  = #{length_of_longest_substring(str5)}"
puts "Max length of #{str6}  = #{length_of_longest_substring(str6)}"
puts "Max length of #{str7}  = #{length_of_longest_substring(str7)}"
puts "Max length of #{str8}  = #{length_of_longest_substring(str8)}"
