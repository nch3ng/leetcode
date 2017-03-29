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
  first_duplicate = 0
  last_duplicate = 0
  last_delete = 0
  is_duplicate = false
  hash = Hash.new
  max=0
  s.each_char.with_index do |c ,idx|
    if !hash.has_key?(c)
      #puts "#{c}: Does not exist, push #{c} to #{idx}"
      hash[c]=idx
    else
      if idx-hash[c] > max
        max = idx-hash[c]
      end
      #puts "The maximum distance of #{c} is #{idx-hash[c]}"
      #puts "delete from #{last_delete} to #{hash[c]-last_delete+1}, #{s[last_delete, hash[c]-last_delete+1]}"
      last_duplicate = hash[c] + 1
      s[last_delete, hash[c]+1].each_char do |c|

        hash.delete(c)
      end
      last_delete = last_duplicate
      #hash.clear
      #
      hash[c]=idx
      if !is_duplicate
        first_duplicate = hash[c]
        #puts "first_dup: #{first_duplicate}"
      end
      is_duplicate=true
    end
  end
  #puts "last_duplicate = #{last_duplicate}, length = #{s.length}"
  if first_duplicate > max
    max = first_duplicate
  end
  if s.length - last_duplicate  > max
    max = s.length - last_duplicate
  end
  if !is_duplicate
    return s.length
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
