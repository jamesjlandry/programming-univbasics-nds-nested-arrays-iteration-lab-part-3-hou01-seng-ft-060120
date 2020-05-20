def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  outer_index = 0
  new_string = []
      while outer_index < src.count do
        inner_index = 0
        string_values = []
          while inner_index < src[outer_index].count do
            if src[outer_index][inner_index].class == String 
              string_values = [outer_index][inner_index]
            end
            inner_index += 1
            string_values << new_string[outer_index][inner_index]
          end
        outer_index += 1
      end
     new_string.join
end