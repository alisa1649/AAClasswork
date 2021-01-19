require "byebug"

class PolyTreeNode
  attr_reader :parent, :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(parent)
    # debugger
    if self.parent != nil
      self.parent.children.delete(self)
    end
    @parent = parent
    if parent != nil && !self.parent.children.include?(self)
      parent.children << self
    end
  end

  def add_child(child)
    @children << child
    child.parent = self
  end

  def remove_child(child)
    self.children.delete(child)
    child.parent = nil
  end
end
