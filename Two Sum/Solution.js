//let nums: number [] = [3,2,4];
//let target: number = 7;
var nums = [2, 7, 11, 15];
var target = 18;
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var two_sum = function (nums, target) {
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
console.log(two_sum(nums, target));
