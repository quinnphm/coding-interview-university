class Node
  attr_accessor :parrent, :value, :left, :right

  def initialize parrent, value, left = nil, right = nil
    @parrent = parrent
    @value = value
    @left = left
    @right = right
  end

  def visit
    print self.value
  end
end

class BinaryTree
attr_accessor :size, :root

  def initialize
    @root = nil
    @size = 0
  end

  def add_child value
    node = Node.new nil, value
    if @root == nil
      @root = node
    else
      curr = @root
      while true
        if node.value < curr.value
          #go left
          if curr.left == nil
            curr.left = node
            node.parrent = curr
            break
          end
          curr = curr.left
        else
          #go right
          if curr.right == nil
            curr.right = node
            node.parrent  = curr
            break
          end
          curr = curr.right
        end
      end
    end
    @size += 1
  end

  def pre_order node
    if node != nil
      node.visit
      pre_order(node.left)
      pre_order(node.right)
    end
  end

  def post_order node
    if node != nil
      post_order(node.left)
      post_order(node.right)
      node.visit
    end
  end

  def in_order node
    if node != nil
      in_order(node.left)
      node.visit
      in_order(node.right)
    end
  end

  def bfs
    q = []
    node = @root
    q << node
    while !q.empty?
      q.delete node
      if node != nil
        node.visit
        q << node.left
        q << node.right
      end
      node = q.first
    end
  end

  def search value
    curr = @root
    while true
      if curr != nil
        if value == curr.value
          p curr.value
          p curr.left
          return curr
        elsif value > curr.value
          curr = curr.right
        elsif value < curr.value
          curr = curr.left
        end
      else
        return false
      end
    end
  end

  def delete value
    node = self.search value
    # node exists
    if node
      #leaf node
      if node.left == nil && node.right == nil
        #left leaf
        if node.value < node.parrent.value
          node.parrent.left = nil
          p node.parrent.left
          @size -= 1
        #right leaf
        else
          node.parrent.right = nil
          @size -= 1
        end
      # one child node
      elsif node.left == nil || node.right == nil
        child = node.left || node.right
        child.parrent = node.parrent
        if node == node.parrent.left
          node.parrent.left = child
        else
          node.parrent.right = child
        end
      #two child node
      else
        child = smallest_right node
        if node.parrent.left == node
          node.parrent.left = child
        else
          node.parrent.right = child
        end
        if child != node.

      end
    #node doesn't exist
    else
      p "No value"
    end
  end

  def smallest_right node
    curr = node.right
    while curr.left != nil
      curr  = curr.left
    end
    curr
  end

end


b=BinaryTree.new
b.add_child 4
b.add_child 2
b.add_child 6
b.add_child 1
b.add_child 3
b.add_child 5
b.add_child 7
b.add_child 6
b.add_child 8

print "\n"
b.pre_order b.root
print "\n"
b.post_order b.root
print "\n"
b.in_order b.root
print "\n"
b.bfs
print "\n"
print "\n"
b.delete(5)

b.smallest_right(b.search(6))
