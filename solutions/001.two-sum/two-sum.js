/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    var ans = [];
    var hash = {};
    for (var i = 0; i < nums.length; i++) {
        if (typeof hash[nums[i]] !== "undefined") {
            ans[0] = hash[nums[i]];
            ans[1] = i;
        }
        else {
            hash[target - nums[i]] = i;
        }
    }
    return ans;
};