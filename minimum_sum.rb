array = [0, 4, 5, 8, 7, 3]
arr = array.sort
sum = 0

for i in 0..arr.length-1
    if i < arr.length/2
        sum += arr[i] * arr[arr.length-1-i]
    else
        break
    end
  print sum  
end

