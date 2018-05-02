Evaluate the value of an arithmetic expression in Reverse Polish Notation.

Valid operators are +, -, *, /. Each operand may be an integer or another expression.

Note:


	Division between two integers should truncate toward zero.
	The given RPN expression is always valid. That means the expression would always evaluate to a result and there won&#39;t&nbsp;be any&nbsp;divide&nbsp;by zero operation.


Example 1:


Input: [&quot;2&quot;, &quot;1&quot;, &quot;+&quot;, &quot;3&quot;, &quot;*&quot;]
Output: 9
Explanation: ((2 + 1) * 3) = 9


Example 2:


Input: [&quot;4&quot;, &quot;13&quot;, &quot;5&quot;, &quot;/&quot;, &quot;+&quot;]
Output: 6
Explanation: (4 + (13 / 5)) = 6


Example 3:


Input: [&quot;10&quot;, &quot;6&quot;, &quot;9&quot;, &quot;3&quot;, &quot;+&quot;, &quot;-11&quot;, &quot;*&quot;, &quot;/&quot;, &quot;*&quot;, &quot;17&quot;, &quot;+&quot;, &quot;5&quot;, &quot;+&quot;]
Output: 22
Explanation: 
  ((10 * (6 / ((9 + 3) * -11))) + 17) + 5
= ((10 * (6 / (12 * -11))) + 17) + 5
= ((10 * (6 / -132)) + 17) + 5
= ((10 * 0) + 17) + 5
= (0 + 17) + 5
= 17 + 5
= 22

