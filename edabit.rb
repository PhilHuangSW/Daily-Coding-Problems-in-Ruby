def identical_filter(arr)
    final_arr = []
    current = 0
    arr_count = 0
    while arr_count < arr.length
        if (arr[current].squeeze.length == 1)
            final_arr.push(arr[current])
        end
        current += 1
        arr_count += 1
    end
    final_arr
end

puts identical_filter(["aaaaaa", "bc", "d", "eeee", "xyz"])

puts identical_filter(["aaaaaa", "bc", "d", "eeee", "xyz"])

puts identical_filter(["88", "999", "22", "545", "133"])

puts identical_filter(["xxxxo", "oxo", "xox", "ooxxoo", "oxo"])
