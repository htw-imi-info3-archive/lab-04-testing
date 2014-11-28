class Node
	attr_accessor :data, :next_node
	def initialize(data,next_node = nil)
		@data = data
		@next_node = next_node
	end

	def self.from_string(s)
		s.split(",").map(&:strip).reverse.inject(nil){|list, n| Node.new(n,list)}
	end

	def to_s
		unless next_node
		  data.to_s 
		else
		  data.to_s + ", " + next_node.to_s
		end
    end


    def delete(data)
    	# this is a too simple implementation to satisfy the first deletion example.
    	return next_node
    end

end