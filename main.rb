# frozen_string_literal: true

def fibs(num)
  fib_array = [0, 1]
  fib_array << fib_array[-1] + fib_array[-2] until fib_array.length == num
  fib_array
end

def fibs_rec(num)
  return [0] if num.zero?
  return [0, 1] if num == 1

  fib_array = fibs_rec(num - 1)
  fib_array << fib_array[-1] + fib_array[-2] if fib_array.length < num
  fib_array
end

def merge_sort(array)
  return array if array.length == 1

  length = array.length
  left_array = merge_sort(array[0, length / 2])
  right_array = merge_sort(array[length / 2, length])
  merge_array(left_array, right_array)
end

def merge_array(arr1, arr2, array = [])
  return array.concat arr1 if arr2.empty?
  return array.concat arr2 if arr1.empty?

  min = [arr1[0], arr2[0]].min
  array << min
  if arr1[0] == min
    arr1.shift
  else
    arr2.shift
  end
  merge_array(arr1, arr2, array)
end
