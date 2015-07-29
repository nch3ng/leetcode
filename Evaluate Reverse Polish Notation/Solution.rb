
exp = ['2','1','5','/','+']
exp1 = ['2', '1', '+', '3', '*']
exp2= ["4", "13", "5", "/", "+"]

test_case = [[18], exp, exp1, exp2, ['3','1','+'], ["10","6","9","3","+","-11","*","/","*","17","+","5","+"],["10","1500","9","3","+","-11","*","/","*","17","+","5","+"],["4","-2","/","2","-3","-","-"]]

# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  opns = []
  tokens.each do |token|

    if token == '+' || token =='-' || token =='*' || token =='/'
      op2 = opns.pop.to_i
      op1 = opns.pop.to_i
      new_op = 0


      if token == '+'
        new_op = op1 + op2

      elsif token =='-'
        new_op = op1 - op2
      elsif token =='*'
        new_op = op1 * op2
      else
        new_op = op1.to_f / op2.to_f
      end

      #puts "#{op1} #{token} #{op2} = #{new_op}"
      opns.push(new_op)
    else
      opns.push(token)
    end
  end
  return opns.pop.to_i
end

puts 1/2
puts 6/-100

test_case.each do |cas|
  print cas
  puts
  puts "ans = #{eval_rpn(cas)}"

end
