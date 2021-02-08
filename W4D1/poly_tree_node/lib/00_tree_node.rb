class PolyTreeNode
    attr_reader :parent, :children , :value

    def initialize(value)
       @parent= nil
       @children =[]
       @value = value 
    end


    def parent=(new_parent)
        if self.parent != nil
            self.parent.children.delete(self)
        end

        @parent = new_parent
        
        if new_parent != nil
            new_parent.children << self
        end 
    end

    def add_child(child_node)
        child_node.parent = self
        if !self.children.include?(child_node)
            self.children << child_node
        end

    end

    def remove_child(child_node)
        raise "error" if !self.children.include?(child_node)
        self.children.delete(child_node)
        child_node.parent = nil
    end

    def dfs(target_value)
        return self if self.value == target_value 

        self.children.each do |child|
            result = child.dfs(target_value)
            return result if result != nil
        end
        return nil
    end

    def bfs(target_value)
        queue = [self]

        while !queue.empty?
            result = queue.shift
            # p result.value
            if result.value == target_value
                return result
            else
                queue.concat(result.children) 
            end
        end
        return nil    
    end

end