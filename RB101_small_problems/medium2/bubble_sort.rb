=begin
method takes an array, and sorts the array in-places using a bubble sort algorithm
input: array
output: the same array object, but sorted ascending

- used the bubble sort algo, which makes multiple passes through the array, and on each pass:
  compares two objects at a time, and if swaps them if appropriate
- sorting is complete if no swaps have been made during a pass
- array will contain at least 2 elements
- return the same object
- don't use the sort or sort_by methods

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

D: the input array object
A:
initialize a swap variable to false
loop through
  swap variable to false
  iterate throug the array elements pair-wise, and swap them if appropriate
    use parallel assignment to change the positions of the elements in-place
  if a swap is made, change the swap variable to true
  break if the swap variable is false
end loop
=end

def bubble_sort!(arr)
  loop do
    swap = false
    0.upto(arr.size - 2) do |start|
      sort_op = arr[start] <=> arr[start + 1]

      if sort_op == 1
        arr[start], arr[start + 1] = arr[start + 1], arr[start]
        swap = true
      end
    end
    break if swap == false
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)