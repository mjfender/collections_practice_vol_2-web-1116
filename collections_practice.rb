def begins_with_r(array)
  if array.any? do |tool|
    tool[0,1] != "r"
  end
    false
  else
    true
  end
end

def contain_a(array)
  a_words = []
  array.each do |element|
    if element.include? "a"
      a_words << element
    end
  end
  a_words
end

def first_wa(array)
  array.find do |word|
    word[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
   puts item.class
   item.is_a?(Fixnum) || item.is_a?(Symbol)
  end
end

def count_elements(array)
# array is: [{:name=>"blake"}, {:name=>"blake"}, {:name=>"ashley"}]
counts = Hash.new 0

  array.each do |element|
  # Iterate through provided array to get all hashes
    puts "#{element[:name]} is element[:name]"
    counts[:name] = element[:name]
    puts "#{counts[:name]} is counts[:name]"
    puts "#{counts[:name][:count]} is counts[:name][:count]"
    #counts[:name][:count] += 1
    puts "#{counts}"
  end

end

def merge_data(array1, array2)
  array1.concat(array2)
end

def find_cool(array)
end

def organize_schools(array)
end
