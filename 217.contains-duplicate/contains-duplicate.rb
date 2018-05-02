def contains_duplicate(nums)
  hash = Hash.new
  nums[0..-1].each_with_index { |val,i|
    if hash.has_key?(val)
        return true
    end
    hash[val]=i
  }
  return false;
end