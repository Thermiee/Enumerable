require_relative 'enumerable'

class MyList
  @list = []
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&value)
    @list.each(&value)
  end
end

puts list = MyList.new(1, 2, 3, 4)
# => #<MyList: @list=[1, 2, 3, 4]>

puts(list.all? { |e| e < 5 })
# => true
puts(list.all? { |e| e > 5 })
# => false

puts(list.any? { |e| e == 2 })
# => true
puts(list.any? { |e| e == 5 })
# => false

puts(list.filter?(&:even?))
# => [2, 4]
