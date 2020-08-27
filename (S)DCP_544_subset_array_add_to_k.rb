################## SUBSET ARRAY ADD TO K ##################

# This problem was asked by Google.

# Given a list of integers S and a target number k, write a function 
# that returns a subset of S that adds up to k. If such a subset cannot 
# be made, then return null.

# Integers can appear more than once in the list. You may assume all 
# numbers in the list are positive.

# For example, given S = [12, 1, 61, 5, 9, 2] and k = 24, 
# return [12, 9, 2, 1] since it sums up to 24.


################## SOLUTION ##################
def subset(arr, n, k)
    return true if k == 0
    return false if n == 0
    if (arr[n-1] > k)
        subset(arr, n-1, k)
    end

    if subset(arr, n-1, k) == true
        subset(arr, n-1, k)
    else
        subset(arr, n-1, k-(arr[n-1]))
    end    
end

arr = [12,1,61,5,9,2]
k = 7
n = arr.length

p subset(arr, n, k)