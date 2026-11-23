class Solution:
    def calPoints(self, operations: List[str]) -> int:
        stack = []
        for i in operations:
            val = 0
            if i == "D":
                val = stack[-1] * 2
                stack.append(val)
            elif i == "C":
                stack.pop()
            elif i == "+":
                val = stack[-2] + stack[-1]
                stack.append(val)
            else:
                val = int(i)
                stack.append(val)
        return sum(stack)