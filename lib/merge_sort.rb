# frozen_string_literal: true

def merge_sort(array)
  # base case
  return array if array.length < 2

  # sort left half
  left = merge_sort(array.slice(0, array.length / 2))

  # sort right half
  right = merge_sort(array.slice(array.length / 2, array.length))

  # merge both halves
  merge(left, right)
end

def merge(left, right)
  merged = []
  until left.empty? && right.empty?
    if left.empty?
      return merged + right
    elsif right.empty?
      return merged + left
    else
      left[0] < right[0] ? merged.push(left.shift) : merged.push(right.shift)
    end
  end

  merged
end


p merge_sort([2, 3, 8, 9, 1, 4, 5, 7])
