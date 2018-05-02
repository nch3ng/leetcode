const num:number = 1534236469;
/**
 * @param {number} x
 * @return {number}
 */
let reverse = function(num: number): number  {

  let reverseNum: number = 0;
  let negative: boolean = false;
  let max_int = 2**31;
  let min_int = -1*2**31;
  let orig = num;
  
  num=(num>0)?num:(0-num);

  while(num>0){
    reverseNum = reverseNum*10 + num%10;
    num = Math.trunc(num/10);

  }

  if(orig<0){
    reverseNum = 0 - reverseNum;
  }

  if (reverseNum > max_int || reverseNum < min_int)
    return 0;
  return reverseNum;
}
