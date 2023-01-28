def min_sum(arr)
    arr.sort! #Sort the array without a copy of that in the memory.
    sum = 0
    for i in 0..arr.length-1
      if i < arr.length/2
        sum += arr[i] * arr[arr.length-1-i]
      else
        break #Get out of the "for loop".
      end
      
    end
    return "This is the minimum sum: #{sum}"
  end
  array = [0, 4, 5, 8, 7, 3] #Create an array as a sample to use in the code.
  p min_sum(array)