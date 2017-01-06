def fibs(num)
    start_num = 0
    f1 = 0
    f2 = 0

    while start_num <= num

        if start_num === 0
            print "0 - "
            f1 = 0
        elsif start_num === 1
            print "1 - "
            f1 = 1
        else
            fn = f1 + f2
            print "#{fn} - "
            f2 = f1
            f1 = fn
        end   
        start_num = start_num + 1 
    end
    puts
end 

def fibs_rec(num)
    if num === 0
        #print " 0 "
        return 0
    elsif num === 1
        #print " 1 "
        return 1
    else
        x = fibs_rec(num - 1) + fibs_rec(num - 2)
        #print " #{x} "
        return x
    end
end

puts "Fibonacci Sequence....."
fibs(20)

puts "Fibs rec........"
print fibs_rec(10)
puts