def merge_sort (arr, sorted = [], i = 0, j = 0)
  return arr if arr.length <= 1

  arr1 = merge_sort(arr.slice(0...(arr.length / 2)))
  arr2 = merge_sort(arr.slice((arr.length / 2)...arr.length))

  until sorted.length == (arr1.length + arr2.length)
    if i >= arr1.length
      sorted += arr2.slice(j...arr2.length)
    elsif j >= arr2.length
      sorted += arr1.slice(i...arr1.length)
    else
      if arr1[i] < arr2[j]
        sorted << arr1[i]
        i += 1
      else
        sorted << arr2[j]
        j += 1
      end
    end
  end
  sorted
end

p arr_even = (1..10).to_a.shuffle
p merge_sort (arr_even)


p arr_odd = (1..15).to_a.shuffle
p merge_sort(arr_odd)

