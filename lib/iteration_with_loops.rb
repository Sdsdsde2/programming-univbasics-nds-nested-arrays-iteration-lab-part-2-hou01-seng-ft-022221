require 'pry'

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  smallest_numbers = [ ]
  a = 0
  # int max so b > a on first loop
  b = 2147483647
  i = 0 
  while i < src.count do
    j = 0
    while j < src[i].count do
      a = src[i][j]
     # binding.pry
      if b > a
        b = a
      end
      j += 1
    end
    smallest_numbers << b
    # I am sure there is a WAYYY better way to do this but yeah... ;(
    b = 2147483647
    i += 1 
  end
  smallest_numbers
end