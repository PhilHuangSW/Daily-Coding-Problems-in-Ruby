################## ARRAY LARGER ELEMENTS TO THE RIGHT ##################

# This problem was asked by **Google**.

# Given an array of integers, return a new array where each element in the new array is the number of smaller elements to the right of that element in the original input array.

# For example, given the array [3, 4, 9, 6, 1], return [1, 1, 2, 1, 0], since:

# - There is 1 smaller element to the right of 3
# - There is 1 smaller element to the right of 4
# - There are 2 smaller elements to the right of 9
# - There is 1 smaller element to the right of 6
# - There are no smaller elements to the right of 1


################## SOLUTION ##################
def larger_right_elements(arr)
    result = []
    return result if arr.nil?
    return [0] if arr.length == 1

    count = 0
    for i in 0..(arr.length-1)
        for j in (i+1)..(arr.length-1)
            if arr[i] > arr[j]
                count += 1
            end
        end
        result << count
        count = 0
    end
    result
end

p larger_right_elements([3,4,9,6,1])
p "Ans: [1,1,2,1,0]"
p larger_right_elements([1])
p "Ans: [0]"
p larger_right_elements([3,1])
p "Ans: [1,0]"
p larger_right_elements([3,9,6])
p "Ans: [0,1,0]"
p larger_right_elements([])
p "Ans: []"
p larger_right_elements([3,3,3,6,3])
p "Ans: [0,0,0,1,0]"
p larger_right_elements([5,4,3,2,1])
p "Ans: [4,3,2,1,0]"