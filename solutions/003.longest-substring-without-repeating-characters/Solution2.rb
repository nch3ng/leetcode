# Use the sliding window method.  i is the open, j is the close.  shift i to j'+ 1 while s[j'] is the duplicate index of s[i,j]

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
  last_idx= s.length
  i=0
  j=0
  max=0
  while j < last_idx
    c=s[j]
    
    if hash.has_key?(c)
      i = [hash[c],i].max
    end
    
    len=j-i+1
    max = [max,len].max
    
    hash[c]=j+1
    j=j+1
    
  end
  max 
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
