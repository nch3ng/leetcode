# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_sub_array_len(nums, k)
    i=0
    max =0
    while i < nums.length do
      j=i+1
      result=nums[i]
      if(result == k && max ==0) then
        max=1
      end
      
      while j < nums.length do
        result = result+nums[j]
        puts "result = #{result}, i = #{i}, j = #{j}, max = #{max}"
        if result == k then
          if (j-i+1)>max then
            max=j-i+1
          end
        end
        j=j+1;
      end
      
      i=i+1
    end 
    max
end

nums = [1, -1, 5, -2, 3]
k=3

puts max_sub_array_len(nums, 3)