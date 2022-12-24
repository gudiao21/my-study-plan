class Computer
    def turnon #Criação do método (comportamento ou ação) para ligar o computer.
        'Turn on the computer'
    end
    
    def shutdown #Criação do método para desligar o computer.
        'Shutdown the computer'
    end
end    
computer = Computer.new #Criação do Objeto "computer" da classe "Computer". Através da criação do objeto "computer" eu consigo interagir com a "class Computer".

puts computer #Mostra o objeto "computer" na memória.
puts computer.shutdown #Chama o método que executará a desligagem do computer.
puts computer.turnon #Chama o método que executará a ligagem do computer.
    