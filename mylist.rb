require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*item)
    @list = item
  end

  def each
    count = 0
    while count < @list.length
      yield @list[count]
      count += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)



# Test #all?
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })

# Test #any?
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })

# Test #filter
puts(list.filter(&:even?))

 #optional
# max
puts(list.max)
