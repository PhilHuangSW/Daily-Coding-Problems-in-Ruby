###################### READ 7 ######################
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