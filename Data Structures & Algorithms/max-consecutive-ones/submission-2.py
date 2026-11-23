class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        max_ones_count = 0
        consec_ones_count = 0
        for num in nums:
            if num == 1:
                consec_ones_count += 1
                if consec_ones_count > max_ones_count:
                    max_ones_count = consec_ones_count
            else:
                consec_ones_count = 0

        return max_ones_count