# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  hash = Hash.new
  anchor = 0
  0.upto(nums.length-1) do |idx|
    
    if hash.has_key?(nums[idx])
        #nums[idx]=nums[idx+1]
        #idx = idx-1
    else
        hash[nums[idx]]=idx
        nums[anchor] = nums[idx]
        anchor = hash.length
    end
  end
  return hash.length
end