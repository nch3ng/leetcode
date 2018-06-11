/**
 * @param {number} x
 * @return {number}
 */
var reverse = function (num) {
    var reverseNum = 0;
    var negative = false;
    var max_int = Math.pow(2, 31);
    var min_int = -1 * Math.pow(2, 31);
    var orig = num;
    num = (num > 0) ? num : (0 - num);
    while (num > 0) {
        reverseNum = reverseNum * 10 + num % 10;
        num = Math.trunc(num / 10);
    }
    if (orig < 0) {
        reverseNum = 0 - reverseNum;
    }
    if (reverseNum > max_int || reverseNum < min_int)
        return 0;
    return reverseNum;
};