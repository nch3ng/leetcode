# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  ret = []
  hash = Hash.new
  nums.each_with_index do |val, idx|
    if hash.has_key?(val)
      ret[1] = idx+1
      ret[0] = hash[val]+1
      return ret
    else
      hash[target-val] = idx
    end
  end
end