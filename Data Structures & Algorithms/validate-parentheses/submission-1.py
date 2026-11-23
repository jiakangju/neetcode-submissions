class Solution:
    def isValid(self, s: str) -> bool:
        hash_map = {"}" : "{", "]" : "[", ")" : "("}
        stack = []
        res = False
        for char in s:
            if char in hash_map:
                if len(stack) < 1:
                    pass
                else:
                    if stack[-1] == hash_map[char]:
                        stack.pop()
                        continue
            stack.append(char)
        if len(stack) == 0:
            res = True
        return res
                    


          
                
        
        