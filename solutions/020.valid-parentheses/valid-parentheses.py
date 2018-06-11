class Solution:
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        stack=[]

        for c in s:
            if c in '{([':
                stack.append(c)
            elif c in '})]':
                if not stack:
                    return False
                    
                left = stack.pop()
                
                if c == '}' and left == '{':
                    continue
                elif c == ')' and left == '(':
                    continue
                elif c == ']' and left == '[':
                    continue
                else:
                    return False
        if stack:
            return False
        else:
            return True
        
        
