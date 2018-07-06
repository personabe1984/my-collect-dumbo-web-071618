def my_collect(arr)
  index = 0
  
  while index < arr.length
    yield arr.collect
    puts 
    index += 1
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
puts array