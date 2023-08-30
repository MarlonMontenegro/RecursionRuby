# frozen_string_literal: true

def merge_sort(arr)

  return arr if arr.length <= 1

  mid = arr.length / 2
  left_half = arr[0..mid - 1]
  right_half = arr[mid..-1]

  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  merge(sorted_left, sorted_right)

end

def merge(left, right)
  result = []

  until left.empty? || right.empty?
    result << if left.first <= right.first
      left.shift
    else
      right.shift
              end
  end
  result.concat(left).concat(right)
end

n = [5, 4, 1, 2, 3, 6]

sorted_arr = merge_sort(n)
puts sorted_arr.inspect
