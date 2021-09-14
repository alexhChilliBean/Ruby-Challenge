NAMES = [
  'Will',
  'Jess',
  'Suzy',
  'Caroline',
  'Manish',
  'Natalie',
  'Maicon',
  'Jason',
  'Anderson',
  'Nimra',
  'Alex',
  'Anna',
  'Serge',
  'Konrad',
  'Robert',
  'Frodo'
]

def names_array(names)
  return names
end

def names_list(names)
  # returns a string with each name in 'names' with a comma between them
  index = 0
  index_max = names.length() - 1
  name_string = ""
  
  while index < index_max do
    name_string += "#{names[index]}, "
    index += 1
  end
  name_string += "#{names[index_max]}"

  return name_string
end

def names_list_alphabetical(names)
  # returns a string with each name in 'names' with a comma between them in alphabetical order
  names.sort!{ |a, b| a <=> b }
  index = 0
  index_max = names.length() - 1
  abc_string = ""
  
  while index < index_max do
    abc_string += "#{names[index]}, "
    index += 1
  end
  
  abc_string += " #{names[index_max]}"

  return abc_string
end

def random_name(names)
  # returns one of the names at random
  r_num = rand(names.length())
  return names[r_num]
end

def random_team_split(names)
  # returns a multidimensional array - one array that contains two arrays in this case.
  # the first array contains 8 random names, and the second array contains another 8 random names not in the first array
  # example:
  # return [['Will','Jess','Suzy','Caroline','Manish','Natalie','Maicon','Jason'],['Anderson','Nimra','Alex','Anna','Serge','Konrad','Robert','Frodo']]
  name_count = 0
  multi_d_array = [[],[]]

  while name_count < 8 do
    r_num1 = rand(names.length())
    r_name1 = names[r_num1]
    multi_d_array[0] << r_name1
    names.delete_at(r_num1)

    r_num2 = rand(names.length())
    r_name2 = names[r_num2]
    multi_d_array[1] << r_name2
    names.delete_at(r_num2)

    name_count += 1

  end
  return multi_d_array
end