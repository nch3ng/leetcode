//let nums: number [] = [3,2,4];
//let target: number = 7;

let nums: number [] = [2, 7, 11, 15];
let target: number = 18;

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */

let twoSum = function (nums: number [], target: number): number [] {
  let ans: number [] = [];
  let hash: { [id: number]: number; }={};
  for (let i = 0; i < nums.length; i++) {
    if(typeof hash[nums[i]] !== "undefined") {
      ans[0]=hash[nums[i]];
      ans[1]=i
    } else {
      hash[target - nums[i]]=i;
    }
  }
  return ans;
}

console.log(twoSum (nums, target));