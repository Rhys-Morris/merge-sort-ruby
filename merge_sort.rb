def merge_sort(array)
    if array.length < 2
        return array
    else
        half = (array.length / 2)
        front = merge_sort(array.slice(0, half))
        back = merge_sort(array.slice(half, array.length))
        return merge_arrays(front, back)
    end
end

def merge_arrays(front, back)
    sorted_array = []
    while !front.empty? && !back.empty? do
        if front[0] < back[0]
            sorted_array << front.shift
        else
            sorted_array << back.shift
        end
    end
    return sorted_array.concat(front).concat(back)
end

pp merge_sort([1, 6, 4, 7, 8, 3, 2, 5])