geclass Pangram
    def initialize(string)
      @input = string.downcase.split('')
      @map = {}
      ('a'..'z').each { |c| @map[c] = nil }
      infinity = 1.0/0.0
      @best = { :length => infinity, :string => nil }
    end
  
    def shortest
      @input.each_with_index do |c, index|
        @map[c] = index if @map.key?(c)
        if pangram? and length < @best[:length]
          @best[:length] = length
          @best[:string] = value
        end
      end
      @best
    end
  
    def pangram?
      @map.values.all? { |value| !value.nil? }
    end
  
    def length
      @map.values.max - @map.values.min
    end
  
    def value
      @input[@map.values.min..@map.values.max].join('')
    end
  end
  pangram = Pangram.new("..")
  print pangram.shortest