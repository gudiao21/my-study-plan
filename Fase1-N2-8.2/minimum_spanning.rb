# The graph.
graph = {} #Creates new hash called graph with an empty key and value.
graph["start"] = {} #Creates key of the hash "start" with an empty hash = "{}". So it is {"start"={}}. "start" is an initial node.
graph["start"]["a"] = 6 #Creates part of the 1º pair of the empty hash {"start"={"a"=>6}}.
graph["start"]["b"] = 2 #Creates the last part of the 2º pair of the hash {"start"={"a"=>6, "b"=>2}}.

graph ["a"] = {}#Creates a new key-value pair in the hash "graph" where key = "a" and value is empty, {"start"=>{"a"=>6, "b"=>2}, "a"=>{}}.
graph["a"]["fin"] = 1 #Add the value "1" at the last pair {"start"=>{"a"=>6, "b"=>2}, "a"=>1}.

graph["b"] = {} #Add key "b" without value{"start"=>{"a"=>6, "b"=>2},"a"=>{"fin"=>1},"b"=>{}}.
graph["b"]["a"] = 3 #{"start"=>{"a"=>6, "b"=>2}, "a"=>{"fin"=>1}, "b"=>{"a"=>3}}.
graph["b"]["fin"] = 5 #{"start"=>{"a"=>6, "b"=>2}, "a"=>{"fin"=>1}, "b"=>{"a"=>3},"fin"=>5}}.


graph["fin"] = {} #{"start"=>{"a"=>6, "b"=>2}, "a"=>{"fin"=>1}, "b"=>{"a"=>3, "fin"=>5}, "fin"=>{}}.
#Obs: graph.keys = ["start", "a", "b", "fin"]
#Obs 2: graph.values = [{"a"=>6, "b"=>2}, {"fin"=>1}, {"a"=>3, "fin"=>5}, {}].


#The costs table
costs = {} # Creates an empty hash.
costs["a"] = 6 # Creates {"a"=>6}.
costs["b"] = 2 # {"a"=>6, "b"=2}.
costs["fin"] = Float::INFINITY #{"a"=>6, "b"=2, "fin"=Float}.

#The parents table.
parents = {} #Creates an empty hash.
parents["a"] = "start" #Creates {"a"=>"start"}.
parents["b"] = "start" # {"a"=>"start", "b"=>"start"}.
parents["fin"] = nil #{"a"=>"start", "b"=>"start", "fin"=>nil}.

@processed = [] #Creating an instance variable.It's going to be unique in a different classes.

def find_lowest_cost_node(costs)
  lowest_cost = Float::INFINITY
  lowest_cost_node = nil
  #Go through each node.
  costs.each do |node, cost|
    #If it's the lowest cost so far and hasn't been processed yet ...
    if cost < lowest_cost && !@processed.member?(node)
      #... set it as the new lowest-cost node.
      lowest_cost = cost
      lowest_cost_node = node
    end
  end
  lowest_cost_node
end

#Find the lowest-cost node that you haven't processed yet.
node = find_lowest_cost_node(costs)
#If you've processed all the nodes, this while loop is done.
until node.nil?
  cost = costs[node]
  #Go through all the neighbors of this node.
  neighbors = graph[node]
  neighbors.keys.each do |n|
    new_cost = cost + neighbors[n]
    #If it's cheaper to get to this neighbor by going through this node...
    if costs[n] > new_cost
      #... update the cost for this node.
      costs[n] = new_cost
      #This node becomes the new parent for this neighbor.
      parents[n] = node
    end
  end
  #Mark the node as processed.
  @processed << node
  #Find the next node to process, and loop.
  node = find_lowest_cost_node(costs)
end

puts "Cost from the start tho each node:"
puts costs
