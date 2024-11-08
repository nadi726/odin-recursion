def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.size / 2
  merge(merge_sort(arr[0...mid]), merge_sort(arr[mid..]))
end

def merge(arr1, arr2)
  return arr2 if arr1.empty?
  return arr1 if arr2.empty?

  if arr1[0] <= arr2[0]
    merge(arr1[1..], arr2).unshift(arr1[0])
  else
    merge(arr1, arr2[1..]).unshift(arr2[0])
  end
end