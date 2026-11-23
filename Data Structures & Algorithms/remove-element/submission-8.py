class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        cnt = 0
        for i in range(len(nums)):
            if nums[i] == val:
                cnt += 1

        for j in range(cnt): nums.remove(val)

        k = len(nums)
        return k