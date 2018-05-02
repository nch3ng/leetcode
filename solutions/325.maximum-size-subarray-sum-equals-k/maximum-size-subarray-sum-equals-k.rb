# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_sub_array_len(nums, k)
  maxLen=0
  sum=0
  
  return 0 if nums.nil? || nums.length == 0
  
  hash = Hash.new
  
  for i in 0..nums.length-1 do
    sum=sum+nums[i]
    
    if sum == k then
      maxLen = [maxLen, i+1].max
    elsif hash.has_key?(sum-k)
      maxLen = [maxLen, i - hash[sum-k]].max
    end
    if !hash.has_key?(sum) then
      hash[sum] = i
    end
  end
  
  return maxLen
end