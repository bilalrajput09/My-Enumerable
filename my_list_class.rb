require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

my_list = MyList.new([1, 2, 3, 4])
puts(my_list.all?(&:positive?))
puts(my_list.any?(&:negative?))
p(my_list.filter(&:even?))
