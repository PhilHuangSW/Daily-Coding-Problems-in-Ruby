############################ PALINDROME ############################
# This problem was asked by Amazon.

# Given a string, determine whether any permutation of it is a palindrome.

# For example, carrace should return true, since it can be rearranged to form racecar, 
# which is a palindrome. daily should return false, since there's no rearrangement 
# that can form a palindrome.


print "Input a string: "
string = gets.chomp
h = Hash.new{|h,k| h[k] = 0}

arr = string.split(//)
for i in 0...arr.length
    h[arr[i]] += 1
end

count_of_odd_num_of_letters = 0
h.each do |key, value| 
    if (value%2 == 1)
        count_of_odd_num_of_letters += 1
    end
end

if count_of_odd_num_of_letters > 2
    puts "false"
else
    puts "true"
end