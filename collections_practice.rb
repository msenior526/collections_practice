def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
  if a == b
    0
  elsif a < b
    1
  elsif  a > b
    -1
  end
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(array)
array[1], array[2] = array[2], array[1]
array
end

def reverse_array(array)
array.reverse
end

def kesha_maker(array)
  new_array = []
  array.each do |strng|
    x = strng.split("")
    x[2] = "$"
    new_array << x.join
  end
  new_array
end

def find_a(array)
  array.select{|strng| strng.start_with?("a")}
end

def sum_array(array)
  array.inject {|sum, i| sum + i}
end

def add_s(array)
  array.each_with_index.collect do |word, index|
    if index == 1
       word
    else
       "#{word}s"
    end
    end
end
