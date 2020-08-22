# def num_identical_pairs(nums)
#     if nums.length <= 1
#         return 0
#     end

#     count = 0
#     max = nums.length - 1
#     for i in 0..max do
#         for j in (i+1)..max
#             if nums[i] == nums[j]
#                 count += 1
#             end
#         end
#     end
#     count
# end

# puts num_identical_pairs([1,2,3,1,1,3])
# puts num_identical_pairs([1,1,1,1])
# puts num_identical_pairs([1,2,3])


arr = [1, 5, 1, 2, 2, -2, -2, 2, 2]
hash = arr.map.with_index {|value, index| hash[value] = index}.to_h
puts hash.inspect
puts hash[2]
puts hash.inspect