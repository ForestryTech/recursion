def merge_sort(arr)
    arrB, arrC, arrA = []
    if arr.size >= 2
        arr_half_size = arr.size / 2
        arrB = arr[0..arr_half_size - 1]
        arrC = arr[(arr_half_size)..arr.size-1]
        arrB = merge_sort(arrB)
        arrC = merge_sort(arrC)
        arrA = merge(arrB, arrC)
        return arrA
    else
        return arr
    end
end

def merge(arrB, arrC)
    i_a = 0
    i_b = 0
    i_c = 0
    arrA = []
    while i_b < arrB.size && i_c < arrC.size
        if arrB[i_b] <= arrC[i_c]
            arrA[i_a] = arrB[i_b]
            i_b = i_b + 1
        else
            arrA[i_a] = arrC[i_c]
            i_c = i_c + 1
        end
        i_a = i_a + 1
    end

    if i_b === arrB.size
        
        while i_c < arrC.size
            arrA[i_a] = arrC[i_c]
            i_a = i_a + 1
            i_c = i_c + 1
        end
    else
        while i_b < arrB.size
            arrA[i_a] = arrB[i_b]
            i_a = i_a + 1
            i_b = i_b + 1
        end
    end
    return arrA
end

a = [1, 4, 7, 8, 23, 3, 5, 99, 3, 4, 12, 2, 1, 33, 432, 11, 212, 32]
a.each {|x| print " #{x} "}
puts "\n-----"
b = merge_sort(a)
b.each {|x| print " #{x} "}
puts