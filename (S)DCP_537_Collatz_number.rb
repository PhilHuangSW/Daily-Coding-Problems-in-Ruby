################## COLLATZ NUMBER ##################

# This problem was asked by Apple.

# A Collatz sequence in mathematics can be defined as follows. Starting 
# with any positive integer:

# if n is even, the next number in the sequence is n / 2
# if n is odd, the next number in the sequence is 3n + 1
# It is conjectured that every such sequence eventually reaches the number 1. 
# Test this conjecture.

# Bonus: What input n <= 1000000 gives the longest sequence?


################## SOLUTION ##################
print "Input an integer: "
num = gets.chomp.to_i
count = 0
while num != 1
    if (num%2 == 0)
        #num = num / 2
        puts "Even: #{num = num/2}"
    else
        #num = 3*num + 1
        puts "Odd: #{num = 3*num + 1}"
    end
    count += 1
end

puts "Number of times in sequence: #{count}"

