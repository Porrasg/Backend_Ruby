def bubble_sort(array)
    return array if array.empty? || array.size == 1

    for index in 0...array.size - 1 
        for value in 0...array.size - index - 1
            if array[value] > array[value + 1]
            array[value], array[value + 1] = array[value + 1], array[value] 
            end
        end
    end
    array
end

list = [6, -1, 2, 20, 5]

new_list = bubble_sort(list)
p new_list
