############################ PALINDROME ############################
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