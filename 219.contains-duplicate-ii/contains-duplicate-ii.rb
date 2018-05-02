# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  min = 4611686018427387903
  diff=0;
  hash = Hash.new
  nums[0..-1].each_with_index { |val,i|
    if hash.has_key?(val)
      diff = i-hash[val]
      min = [min,diff].min
    end
      hash[val]=i
  }
  if min <= k
    return true
  else
    return false
  end
end

