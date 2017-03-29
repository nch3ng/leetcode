data2=[0]
data = [3,0,2,1,0,2,12,5,0,9]
data1=[0,9]
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  length = nums.length
  i=nums.length-1
  while i >= 0 do
    if nums[i]==0
      j=i
      while j < length-1 do
        puts "j = #{j}"
        puts "swap #{nums[j]} and #{nums[j+1]}"
        nums[j], nums[j+1]=nums[j+1], nums[j]
        puts "#{nums}"
        j = j + 1
        
      end
    end
    i=i-1
  end
  re
end

move_zeroes(data2)