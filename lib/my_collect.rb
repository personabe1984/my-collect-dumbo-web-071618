def my_collect(arr)
  index = 0
  arr_holder = []
  while index < arr.length
    arr_holder.push(yield)
    index += 1
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
puts array