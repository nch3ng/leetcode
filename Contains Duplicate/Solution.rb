# @param {Integer[]} nums
# @return {Boolean}

numbers = Array.[](2,3,4,5,6,7,6,8,9)

def contains_duplicate(nums)
  hash = Hash.new
  nums[0..-1].each_with_index { |val,i|
    if hash.has_key?(val)
      puts 'yes'
        return true
    end
    hash[val]=i
  }
  return false;
end


contains_duplicate(numbers)
