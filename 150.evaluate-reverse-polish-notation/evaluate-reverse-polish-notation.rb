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
        new_op = new_op.to_i
      end

      opns.push(new_op)
    else
      opns.push(token)
    end
  end
  return opns.pop.to_i
end