def counting_sort(a=[9, 8, 7, 6, 6], min  = 0, max = 9)
    if min > max
      return "invalid range!"
    end
    
    n = max - min + 1 #n = 9 - 0 + 1 = 10.
    count = Array.new(n,0) #count=[0,0,0,0,0,0,0,0,0,0]
    len = a.length #len = 5
    output = Array.new(len) #Cria um array com comprimento definido por "len" = 5. "output=[nil,nil,nil,nil,nil]."
  
    for i in 0...len
      count[a[i] - min] += 1
    end #Resultaria no final do loop "Count=[0,0,0,0,0,0,2,1,1,1]".Marca a qtd de frequência de determinado número.
    
    for i in 1...n #n = 10
      count[i] += count[i-1] #
    end #Resultaria no final do loop "count = [0,0,0,0,0,2,3,4,5,6]"
    
    for i in 0...len
      output[count[a[i] - min] - 1] = a[i] #"output=[0,0,6,7,8,9]"
      count[a[i] - min] -= 1 #"count=[0,0,0,0,0,2,3,4,5]."
    end
    
    for i in 0...len # len = 5
      a[i] = output[i]
    end
    
    return a
  
  end
  
  p counting_sort

#outra forma de se fazer o "Counting_sort", entretanto não o entendi!  

# class Countsort
#   attr_reader :array_sorted
  
#   def initialize
#     @array_sorted = []
#   end

#   def init(array)
#     min_max = array_max_min(array)
#     count_sort(array, min_max[0], min_max[1])
#   end

#   private

#   def array_max_min(array)
#     array.minmax
#   end
  
#   def count_sort(array, min, max)
#     if min > max
#       return 'algo deu errado, poxa!'
#     else
#       n = max - min + 1
#       size = array.length
#       aux = Array.new(size)
#       count = Array.new(n,0)

#       (0...size).each do |i|
#         count[array[i] - min] += 1
#       end
#       (1...n).each do |i|
#         count[i] += count[i - 1]
#       end
#       (0...size).each do |i|
#         aux[count[array[i] - min] - 1] = array[i]
#         count[array[i] - min] -= 1
#       end
#       (0...size).each do |i|
#         array[i] = aux[i]
#       end
#     end
#     @array_sorted = array
#   end
# end

# c_s = Countsort.new
# c_s.init([1, 4, 10, 2, 3, 32, 0])
# p c_s.array_sorted