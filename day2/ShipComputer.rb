class ShipComputer

  def load(program_string)
    @memory = program_string.split(',').map(&:to_i)
    @pc = 0
  end

  def run
    while peek(@pc) != 99 do
      if peek(@pc) == 1 # sum
        poke(peek(@pc + 3), peek(peek(@pc + 1)) + peek(peek(@pc + 2)))
      else # multiplication
        poke(peek(@pc + 3), peek(peek(@pc + 1)) * peek(peek(@pc + 2)))
      end
      @pc += 4
    end
  end

  def peek(i)
    @memory[i]
  end

  def poke(i, value)
    @memory[i] = value
  end

  private
  def exec; end
  def move_pc; end
end
