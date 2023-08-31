puts("-------------------- 1 --------------------")

  def nil_array(number)
    # return an array containing `nil` the given number of times
    Array.new(number, "nil")
  end
  puts nil_array(5)

  puts("-------------------- 2 --------------------")
  
  list_number = [1,2,3,4,5,6,7,8,9]
  def first_element(array)
    # return the first element of the array
    array[0]
  end
  puts first_element(list_number)

  puts("-------------------- 3 --------------------")

  list_number2 = [1,2,3,4,5,6,7,8,9]
  def third_element(array)
    # return the third element of the array
    array[2]
  end
  puts third_element(list_number2)

  puts("-------------------- 4 --------------------")

  list_number3 = [1,2,3,4,5,6,7,8,9]
  def last_three_elements(array)
    # return the last 3 elements of the array
    array[-3..-1]
  end
  puts last_three_elements(list_number3)
  
  puts("-------------------- 5 --------------------")

  list_number4 =[10,20,30,40]
  def add_element(array)
    # add an element (of any value) to the array
    array << 50
  end
  puts add_element(list_number4)
  
  puts("-------------------- 6 --------------------")

  list_number5 =[10,20,30,40]
  def remove_last_element(array)
    # Step 1: remove the last element from the array
    array.pop
    # Step 2: return the array (because Step 1 returns the value of the element removed)
    array
  end
  puts remove_last_element(list_number5)
  
  puts("-------------------- 7 --------------------")

  list_number6 =[5,10,15,20,25,30,35]
  def remove_first_three_elements(array)
    # Step 1: remove the first three elements
    array.shift(3)
    # Step 2: return the array (because Step 1 returns the values of the elements removed)
    array
  end
  puts remove_first_three_elements(list_number6)
  
  puts("-------------------- 8 --------------------")

  list_number7 = [1,2,3,4,5]
  list_number8 = [6,7,8,9,10]
  def array_concatenation(original, additional)
    # return an array adding the original and additional array together
    original + additional
  end
  puts array_concatenation(list_number7,list_number8)
  
  puts("-------------------- 9 --------------------")

  arr1 = [10,20,30]
  arr2 = [15,20,35]
  def array_difference(original, comparison)
    # return an array of elements from the original array that are not in the comparison array
    comparison_array = original - comparison
    comparison_array
  end
  puts array_difference(arr1,arr2)

  puts("-------------------- 10 --------------------")

  def empty_array?(array)
    # return true if the array is empty
    array.empty?
  end

  list=[]
  if empty_array?(list)
    puts "It's empty"
  else
    puts "It's not empty"
  end
  
  puts("-------------------- 11 --------------------")

    name="kianny"
  def reverse(array)
    # return the reverse of the array
    array.reverse
  end
  puts reverse(name)

  puts("-------------------- 12 --------------------")

  name= "kianny"
  def array_length(array)
    # return the length of the array
    array.length
  end
  puts array_length(name)
  
  puts("-------------------- 13 --------------------")

  list_value = [5,10,15]
  def include?(array, value)
    # return true if the array includes the value
    array.include?(value)
  end
  puts list_value.include?(10)
  
  puts("-------------------- 14 --------------------")

  list_value2 = ["casa", "hotel", "aeropuerto"]
  def join(array, separator)
    # return the result of joining the array with the separator
    array.join(separator)
  end
  puts list_value2.join("-")