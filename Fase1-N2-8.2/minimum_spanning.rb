def minimum_spanning_tree(graph)
    edges = []
    graph.each do |vertex, vertex_edges|
      vertex_edges.each do |edge|
        edges << [edge[:weight], vertex, edge[:vertex]]
      end
    end
  
    edges = edges.sort
    tree = []
    parents = (0..5).to_a
    find_set = lambda { |x| (x == parents[x]) ? x : (parents[x] = find_set.call(parents[x])) }
    union_set = lambda { |x, y| parents[find_set.call(x)] = find_set.call(y) }
  
    edges.each do |edge|
      weight, a, b = edge
      a, b = find_set.call(a), find_set.call(b)
      if a != b
        tree << edge
        union_set.call(a, b)
      end
    end
    return tree
  end
  
  # Example graph with 6 nodes
  graph = {
    0 => [{vertex: 1, weight: 7}, {vertex: 2, weight: 8}, {vertex: 3, weight: 9}],
    1 => [{vertex: 0, weight: 7}, {vertex: 3, weight: 10}, {vertex: 4, weight: 15}],
    2 => [{vertex: 0, weight: 8}, {vertex: 3, weight: 11}, {vertex: 5, weight: 7}],
    3 => [{vertex: 0, weight: 9}, {vertex: 1, weight: 10}, {vertex: 2, weight: 11}, {vertex: 4, weight: 6}, {vertex: 5, weight: 8}],
    4 => [{vertex: 1, weight: 15}, {vertex: 3, weight: 6}, {vertex: 5, weight: 9}],
    5 => [{vertex: 2, weight: 7}, {vertex: 3, weight: 8}, {vertex: 4, weight: 9}]
  }
  
  puts "Minimum Spanning Tree: #{minimum_spanning_tree(graph)}"