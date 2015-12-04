# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}


numbers = Array.[](2,3,4,2,3,5,6,8,9,3,4,7,6,4,5,8,9,0)

def contains_nearby_duplicate(nums, k, t)
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

end


contains_nearby_duplicate(numbers,3,6)


