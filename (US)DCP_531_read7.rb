###################### READ 7 ######################

# This problem was asked Microsoft.

# Using a read7() method that returns 7 characters from 
# a file, implement readN(n) which reads n characters.

# For example, given a file with the content “Hello world”, 
# three read7() returns “Hello w”, “orld” and then “”.


def read7(file)
    file_data = File.read(file)
    arr = file_data.split(//)
    final_arr = []
    for i in 0...7
        final_arr.push arr[i]
    end
    puts final_arr.join
end

def readN(n)
    for i in 0...n
        read7("helloworld.txt")
    end
end

readN(3)