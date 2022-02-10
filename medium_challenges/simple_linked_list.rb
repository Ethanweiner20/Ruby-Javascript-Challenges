class Element
  attr_accessor :datum, :next

  def initialize(datum, next_ele=nil)
    @datum = datum
    @next = next_ele
  end

  def tail?
    self.next.nil?
  end

  def num_links
    tail? ? 1 : 1 + self.next.num_links
  end

  def to_a
    tail? ? [datum] : [datum] + self.next.to_a
  end

  # Accumulator: `reversed_accum` stores the reversed list so far
  # def reverse(reversed_accum=SimpleLinkedList.new)
  #   reversed_accum.push(datum)
  #   tail? ? reversed_accum : self.next.reverse(reversed_accum)
  # end
end

class SimpleLinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def push(datum)
    self.head = Element.new(datum, head)
  end

  def empty?
    head.nil?
  end

  def size
    empty? ? 0 : head.num_links
  end

  def peek
    head.datum if head
  end

  def pop
    popped_datum = head.datum
    self.head = head.next unless empty?
    popped_datum
  end

  def self.from_a(array)
    list = new

    unless array.nil?
      array_copy = array.clone
      list.push(array_copy.pop) until array_copy.empty?
    end

    list
  end

  def to_a
    empty? ? [] : head.to_a
  end

  # Solution 1: Iterative

  def reverse
    list_copy = clone
    reversed = SimpleLinkedList.new
    reversed.push(list_copy.pop) until list_copy.empty?
    reversed
  end

  # Solution 2: Recursive

  # def reverse
  #   return SimpleLinkedList.new if empty?
  #   head.reverse
  # end
end