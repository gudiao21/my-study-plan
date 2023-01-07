eval "puts 'danilo'"

atr = "danilo"

eval 
    def #{atr}(value) #Define propriedade "get".
        @#{atr} = value
    end
    

    eval
        def mostra #define propriedade "set".
            @#{atr}
        end
    

danilo('dssfds')