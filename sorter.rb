# Given a list that contains integers, can you write a function that returns
# them sorted by increasing order?
class Sorter
  def initialize(array)
    @solution = []
    @lista = Set.new(array)
  end

  def sort
    candidate = nil
    (@lista.size).times do
      candidate = @lista.first
      @lista.each do |y|
        if y < candidate
          candidate = y
        end
      end
      @solution << candidate
      @lista.delete(@solution.last)
    end
    @solution
  end
end
