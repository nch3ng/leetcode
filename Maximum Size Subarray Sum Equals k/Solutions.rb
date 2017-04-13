# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_sub_array_len(nums, k)
  
  sum=0
  maxLen=0
  
  return 0 if nums.nil? || nums.length == 0
  
  hash = Hash.new
  for i in 0..nums.length-1 do
    #puts sum
    sum = sum + nums[i]
    
    if sum==k then
      
      maxLen = [maxLen, i+1].max
      puts "sum = #{sum}, k=#{k}"
    elsif hash.has_key?(sum-k)
      puts "-> sum = #{sum}, k=#{k}"
      maxLen = [maxLen, i - hash[sum - k]].max
    end
    puts "-> maxLen = #{maxLen}"
    if !hash.has_key?(sum) then
      hash[sum]=i
      puts hash
    end
  end
  
  return maxLen
end

nums = [1, 1, -1, 5, -2, 3]
k=3

puts max_sub_array_len(nums, k)