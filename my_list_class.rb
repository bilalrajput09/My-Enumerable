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
my_list = MyList.new([1,2,3,4])
puts my_list.all? {|element| element > 0}
puts my_list.any? {|element| element < 0}
p my_list.filter? {|element| element.even? }
