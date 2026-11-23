class Solution:
    def replaceElements(self, arr: List[int]) -> List[int]:
        k = 0
        while k < len(arr):
            max = 0
            for i in range(k + 1, len(arr)):
                
                if arr[i] > max: 
                    max = arr[i]
            arr[k] = max
            k += 1
        
        arr[-1] = -1
        return arr