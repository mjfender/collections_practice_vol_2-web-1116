require 'pry'

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
   item.is_a?(Fixnum) || item.is_a?(Symbol)
  end
end

def count_elements(array)
# array is: [{:name=>"blake"}, {:name=>"blake"}, {:name=>"ashley"}]
# helpful hash methods... .has_value?(asdf), .values

  just_names = []
  new_array = []
  new_hash = {}

  just_names = array.collect do |hash| 
    hash.values
  end.flatten.sort.reverse

  just_names.each do |name|
    if new_array.count > 0
      if new_array[-1][:name] == name
        new_array[-1][:count] +=1
      else
        new_hash[:name] = name
        new_hash[:count] = 1
        new_array << new_hash
        new_hash = {}
      end
    else
      new_hash[:name] = name
      new_hash[:count] = 1
      new_array << new_hash
      new_hash = {}
    end

  end
  new_array
end

def merge_data(array1, array2)
  # array1 --> [{:first_name=>"blake"}, {:first_name=>"ashley"}]
  # array2 --> [{"blake"=>
  #  {:awesomeness=>10,
  #   :height=>"74",
  #   :last_name=>"johnson"},
  # "ashley"=>
  #  {:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]
  # expect:
  # [{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]

  new_hashes = []
  array1.each do |hash|
    new_hash = {}
    new_hash[hash.keys.first]= hash[hash.keys.first]
    array2[0].each do |key, value|
      if new_hash[hash.keys.first] = key
        value.each do |k, v|
        new_hash[k] = v
        end
      end
    new_hashes << new_hash
    new_hash = {}
    end
  end
  new_hashes.uniq
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(array)
 #  array is {"flatiron school bk"=>{:location=>"NYC"},
 # "flatiron school"=>{:location=>"NYC"},
 # "dev boot camp"=>{:location=>"SF"},
 # "dev boot camp chicago"=>{:location=>"Chicago"},
 # "general assembly"=>{:location=>"NYC"},
 # "Hack Reactor"=>{:location=>"SF"}}
  
  #expects {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>["dev boot camp chicago"]}
  new_hash = {}
  array.each do |array2|
  #school is ["flatiron school bk", {:location=>"NYC"}]
        
        new_hash[array2[1].values[0]] ||= []
        new_hash[array2[1].values[0]] << array2[0]
  end
  new_hash
  
end
