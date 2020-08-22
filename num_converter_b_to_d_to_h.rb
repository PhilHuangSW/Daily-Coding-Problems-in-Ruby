################### CONVERTING NUMBER FROM BINARY TO DECIMAL TO HEXADECIMAL #########################
def convert_num
    puts "What format is the number? Enter b, d, h, or e: "
    puts "b: binary"
    puts "d: decimal"
    puts "h: hexadecimal"
    puts "e: exit"
    format = gets.chomp
    case format.downcase
    when 'b'
        print "I would like binary please: "
        binary = gets.chomp
        if (binary !~ /[^01-]/) == false
            print "This is not a binary number."
        else
            decimal = binary_to_decimal(binary.to_s)
            puts "binary to decimal: #{decimal}"
            hexadecimal = decimal_to_hexadecimal(decimal)
            puts "binary to hexadecimal: #{hexadecimal}"
        end
    when 'd'
        print "Input decimal: "
        decimal = gets.chomp
        if (decimal !~ /[^0-9\-]/) == false 
            print "This is not a decimal number."
        else
            binary = decimal_to_binary(decimal.to_i)
            puts "decimal to binary: #{binary}"
            hexadecimal = decimal_to_hexadecimal(decimal)
            puts "decimal to hexadecimal: #{hexadecimal}"
        end
    when 'h'
        print "I would like hexadecimal please: "
        hexadecimal = gets.chomp
        if (hexadecimal !~ /[^0-9A-F\-]/) == false
            print "This is not a hexadecimal number."
        else
            decimal = hexadecimal_to_decimal(hexadecimal.to_s)
            puts "hexadecimal to decimal: #{decimal}"
            binary = decimal_to_binary(decimal.to_i)
            puts "hexadecimal to binary: #{binary}"
        end
    when 'e'
        puts "Exiting"
        exit
    else
        puts "I don't recognize that input, please put b, d, or h"
    end
    puts "---------------------"
end

def binary_to_decimal(binary)
    if binary == 0
        return 0
    end

    arr = binary.to_s.split(//)
    final_arr = []

    #puts arr.inspect
    if arr[0] == "-"
        placement = arr.length - 2
        for i in 1...arr.length
            if arr[i].to_i == 1
                final_arr.push (2**placement)
                placement -= 1
            else
                final_arr.push 0
                placement -= 1
            end
        end
        #puts final_arr.inspect
        -(final_arr.sum)
    else 
        placement = arr.length - 1
        for i in 0...arr.length
            if arr[i].to_i == 1
                final_arr.push (2**placement)
                placement -= 1
            else
                final_arr.push 0
                placement -= 1
            end
        end
        #puts final_arr.inspect
        final_arr.sum
    end
end

def decimal_to_binary(decimal)
    bit_num = 0
    binary_arr = []
    if decimal == 0
        return 0
    end

    decimal < 0 ? is_negative = true : is_negative = false
    decimal = decimal.abs

    while decimal != 0
        if decimal%2 == 1
            binary_arr.push 1
        else
            if decimal/2 < 1
                binary_arr.push 1
            else
                binary_arr.push 0
            end
        end
        decimal = decimal/2
    end
    if is_negative == true
        -(binary_arr.reverse.join.to_i)
    else
        binary_arr.reverse.join.to_i
    end
end

def hexadecimal_to_decimal(hexadecimal)
    if hexadecimal == 0
        return 0
    end

    arr = hexadecimal.to_s.split(//)
    final_arr = []

    if arr[0] == "-"
        placement = arr.length - 2
        for i in 1...arr.length
            final_arr.push (arr[i].to_i(16) * (16**placement))
            placement -= 1
        end
        -(final_arr.sum)
    else
        placement = arr.length - 1
        for i in 0...arr.length
            final_arr.push (arr[i].to_i(16) * (16**placement))
            placement -= 1
        end
        final_arr.sum
    end
end

def decimal_to_hexadecimal(decimal)
    bit_num = 0
    hexadecimal_arr = []
    decimal = decimal.to_i
    decimal < 0 ? is_negative = true : is_negative = false

    decimal = decimal.abs
    if decimal == 0
        return 0
    end

    while decimal != 0
         hexadecimal_arr.push (decimal%16)
         decimal = decimal/16
    end
    for i in 0..hexadecimal_arr.length
        if hexadecimal_arr[i].to_i >= 10
            hexadecimal_arr[i] = hexadecimal_arr[i].to_s(16).upcase
        end
    end

    if is_negative == true
        hexadecimal_arr.push "-"
    end
    hexadecimal_arr.reverse.join
end

while (true)
    convert_num
end