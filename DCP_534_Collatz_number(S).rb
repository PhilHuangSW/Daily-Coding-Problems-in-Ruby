############################ COLLATZ NUMBER ############################
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

