class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        max_cons_n = 0
        res = 0
        for num in nums:
            if num == 1:
                max_cons_n +=1
            else:
                if max_cons_n > res:
                    res = max_cons_n
                max_cons_n = 0
        return max(res, max_cons_n)
            