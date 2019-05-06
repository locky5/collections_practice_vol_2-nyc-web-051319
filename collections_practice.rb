def begins_with_r(tools_array)
  r_array = []
  tools_array.each do |element|
    if element.start_with?("r") # puts elements with 'r' in them into r_array
      r_array << element
    end
  end
  if r_array == tools_array # checks if elements in both arrays are same
    return true
  else
    return false
  end
end

def contain_a(array)
  a_array = []
  array.each do |element|
    if element.include?("a")
      a_array << element 
    end
  end
  return a_array
end

def first_wa(array)
  wa_array = []
  array.each do |element|
    if element.to_s.start_with?("wa") # makes it into a string first
      wa_array << element
    end
  end
  return wa_array[0] # only want first element
end

def remove_non_strings(array)
  array.delete_if { |element| !(element.is_a? String) } 
end

# () will return false if not a string, !() will then return true and will then be deleted

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0 # initialize count to 0
    name = hash[:name] # initializes name to 0
    array.each do |hash2|
      if hash2[:name] == name # if name appears...
        hash[:count] += 1 # count goes up by one
      end
    end
  end.uniq # returns only unique elements (not sure why its here...)
end

def merge_data(data1, data2)
  data2[0].collect do |name, hash1| # name = key, hash1 = data
    new_hash = {}
    data1.each do |hash2|
      if hash2[:first_name] == name # if key from hash2 matches with key from hash1
        new_hash = hash1.merge(hash2) # merge the two hashes together
      end
    end
    new_hash # return new hash
  end
end

def find_cool(cool)
  return_array = []
  cool.each do |hash| # since you want to put the ENTIRE hash into array...
    hash.each do |key, value| # you split it into two parts like this
      if value == "cool"
        return_array << hash # so this is the final result
      end
    end
  end
  return_array
end

def organize_schools(schools)
  school_hash = {}
  
  schools.values.each do |location| # takes values of school hash...
    school_hash[location.values[0]] = [] # first location index -> key, value -> []
  end
  schools.each do |school, location|
    school_hash[location.values[0]] << school # puts school per location
  end

  school_hash
end