def my_collect(arr)
  index = 0
  arr_holder = []
  while index < arr.length
    arr_holder.push(yield(arr[index]))
    index += 1
  end
  return arr_holder
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
temp = my_collect(array) do |name|
  name.split(" ").first
end
puts temp