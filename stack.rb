class Stack
  def initialize
    @store = Array.new
  end
  
  def pop
    @store.pop
  end
  
  def push(element)
    @store.push(element)
    self
  end
  
  def size
    @store.size
  end

  def print
    @store.each do |element|
      puts element.value
    end
    puts "---------"
  end
  
end