require_relative "./tree_node.rb"

class KnightPathFinder
    attr_reader :considered_positions
   
    def self.valid_moves(node_pos)
        row = node_pos[0]
        col= node_pos[1]
        moves= []
        moves << [row+2,col-1]
        moves << [row+2,col+1]
        moves << [row+1,col-2]
        moves << [row-2,col-1]
        moves << [row-2,col+1]
        moves << [row-1,col-2]
        moves << [row-1,col+2]
        moves << [row+1,col+2]

        return moves.select do |move|
            move[0] <= 7 && move[0] >= 0 && move[1] <= 7 && move[1] >= 0
        end
    end
    
    def initialize(starting)
        @root_node = PolyTreeNode.new(starting)
        @considered_positions= [@root_node.value]
        self.build_move_tree(@root_node) 
    end
    
    def build_move_tree(root_node)
        queue= [root_node]
        while !queue.empty?
            current_node= queue.shift
            current_children_pos= new_move_positions(current_node.value)
            current_children_pos.each do |child_pos|
                temp_child= PolyTreeNode.new(child_pos)
                temp_child.parent= current_node
                current_node.children << temp_child
            end  
            queue.concat(current_node.children)
        end
    end  
    
    def new_move_positions(node_value)
        new_moves=[]
        valid_moves= KnightPathFinder.valid_moves(node_value)
        valid_moves.each do |pos|
            if !@considered_positions.include?(pos)
                new_moves<< pos
            end
        end
        @considered_positions += new_moves
        return new_moves
    end

    def find_path(end_pos)
        queue = [@root_node]
    
        while !queue.empty?
            result = queue.shift
            if result.value == end_pos
                return result.trace_path_back
            else
                queue.concat(result.children) 
            end
        end
        return nil    
    end

end

kpf = KnightPathFinder.new([0, 0])
p kpf.find_path([7, 6]) # => [[0, 0], [1, 2], [2, 4], [3, 6], [5, 5], [7, 6]]
p kpf.find_path([6, 2])